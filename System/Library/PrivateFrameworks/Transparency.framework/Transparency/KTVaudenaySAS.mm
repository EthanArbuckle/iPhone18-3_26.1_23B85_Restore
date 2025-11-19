@interface KTVaudenaySAS
+ (id)randomValueOfLength:(unint64_t)a3;
- (BOOL)setInitiatorUndisclosedRandom:(id)a3;
- (BOOL)setPeerRandom:(id)a3;
- (id)initAcceptorWithPublic:(id)a3 configuration:(id)a4;
- (id)initInitiatorWithPublic:(id)a3 configuration:(id)a4;
- (id)selfRandom;
- (id)shortAuthenticationString;
- (id)undisclosedInitiatorRandom;
- (id)undisclosedInitiatorValue:(id)a3;
- (void)setPeerPublic:(id)a3;
@end

@implementation KTVaudenaySAS

+ (id)randomValueOfLength:(unint64_t)a3
{
  v4 = [objc_alloc(MEMORY[0x1E695DF88]) initWithLength:a3];
  if (SecRandomCopyBytes(0, a3, [v4 mutableBytes]))
  {
    abort();
  }

  return v4;
}

- (id)initInitiatorWithPublic:(id)a3 configuration:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13.receiver = self;
  v13.super_class = KTVaudenaySAS;
  v8 = [(KTVaudenaySAS *)&v13 init];
  v9 = v8;
  if (v8)
  {
    [(KTVaudenaySAS *)v8 setInitiator:1];
    [(KTVaudenaySAS *)v9 setInitiatorInfo:v6];
    [(KTVaudenaySAS *)v9 setConfig:v7];
    v10 = [KTVaudenaySAS randomValueOfLength:16];
    [(KTVaudenaySAS *)v9 setInitiatorRandom:v10];

    v11 = v9;
  }

  return v9;
}

- (id)initAcceptorWithPublic:(id)a3 configuration:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13.receiver = self;
  v13.super_class = KTVaudenaySAS;
  v8 = [(KTVaudenaySAS *)&v13 init];
  v9 = v8;
  if (v8)
  {
    [(KTVaudenaySAS *)v8 setInitiator:0];
    [(KTVaudenaySAS *)v9 setAcceptorInfo:v6];
    [(KTVaudenaySAS *)v9 setConfig:v7];
    v10 = [KTVaudenaySAS randomValueOfLength:16];
    [(KTVaudenaySAS *)v9 setAcceptorRandom:v10];

    v11 = v9;
  }

  return v9;
}

- (void)setPeerPublic:(id)a3
{
  v4 = a3;
  if ([(KTVaudenaySAS *)self initiator])
  {
    [(KTVaudenaySAS *)self setAcceptorInfo:v4];
  }

  else
  {
    [(KTVaudenaySAS *)self setInitiatorInfo:v4];
  }
}

- (id)undisclosedInitiatorValue:(id)a3
{
  v4 = MEMORY[0x1E695DF88];
  v5 = a3;
  v6 = [v4 alloc];
  v7 = [(KTVaudenaySAS *)self config];
  v8 = [v6 initWithLength:{*objc_msgSend(v7, "di")}];

  v9 = [(KTVaudenaySAS *)self config];
  [v9 di];
  [v5 length];
  [v5 bytes];

  [v8 mutableBytes];
  ccdigest();

  return v8;
}

- (id)undisclosedInitiatorRandom
{
  v3 = [(KTVaudenaySAS *)self initiatorRandom];
  v4 = [(KTVaudenaySAS *)self undisclosedInitiatorValue:v3];

  return v4;
}

- (BOOL)setInitiatorUndisclosedRandom:(id)a3
{
  v4 = a3;
  if ([(KTVaudenaySAS *)self initiator])
  {
    goto LABEL_5;
  }

  v5 = [(KTVaudenaySAS *)self sentUndisclosedRandom];
  if (!v5)
  {
    goto LABEL_4;
  }

  v6 = v5;
  v7 = [(KTVaudenaySAS *)self sentUndisclosedRandom];
  v8 = [v7 isEqual:v4];

  if (!v8)
  {
LABEL_5:
    v10 = 0;
  }

  else
  {
LABEL_4:
    v9 = [MEMORY[0x1E695DEF0] dataWithData:v4];
    [(KTVaudenaySAS *)self setSentUndisclosedRandom:v9];

    v10 = 1;
  }

  return v10;
}

- (BOOL)setPeerRandom:(id)a3
{
  v4 = a3;
  if ([v4 length] != 16)
  {
    goto LABEL_8;
  }

  if (![(KTVaudenaySAS *)self initiator])
  {
    v7 = [(KTVaudenaySAS *)self sentUndisclosedRandom];

    if (v7)
    {
      v5 = [(KTVaudenaySAS *)self undisclosedInitiatorValue:v4];
      v8 = [(KTVaudenaySAS *)self sentUndisclosedRandom];
      v6 = [v5 isEqual:v8];

      if (v6)
      {
        v9 = [MEMORY[0x1E695DEF0] dataWithData:v4];
        [(KTVaudenaySAS *)self setInitiatorRandom:v9];
      }

      goto LABEL_7;
    }

LABEL_8:
    LOBYTE(v6) = 0;
    goto LABEL_9;
  }

  v5 = [MEMORY[0x1E695DEF0] dataWithData:v4];
  [(KTVaudenaySAS *)self setAcceptorRandom:v5];
  LOBYTE(v6) = 1;
LABEL_7:

LABEL_9:
  return v6;
}

- (id)selfRandom
{
  v3 = [(KTVaudenaySAS *)self initiator];
  v4 = [(KTVaudenaySAS *)self acceptorRandom];
  v5 = v4;
  if (v3)
  {

    if (v5)
    {
      v5 = [(KTVaudenaySAS *)self initiatorRandom];
    }
  }

  return v5;
}

- (id)shortAuthenticationString
{
  v63 = *MEMORY[0x1E69E9840];
  v3 = [(KTVaudenaySAS *)self initiatorInfo];
  if (!v3)
  {
    goto LABEL_11;
  }

  v4 = v3;
  v5 = [(KTVaudenaySAS *)self initiatorRandom];
  if (!v5)
  {
    goto LABEL_10;
  }

  v6 = v5;
  v7 = [(KTVaudenaySAS *)self acceptorInfo];
  if (!v7)
  {

LABEL_10:
    goto LABEL_11;
  }

  v8 = v7;
  v9 = [(KTVaudenaySAS *)self acceptorRandom];

  if (!v9)
  {
LABEL_11:
    v51 = 0;
    goto LABEL_12;
  }

  v60 = [(KTVaudenaySAS *)self config];
  v10 = *([v60 di] + 8);
  v11 = [(KTVaudenaySAS *)self config];
  v12 = v10 + *([v11 di] + 16) + 19;
  v13 = [(KTVaudenaySAS *)self config];
  v14 = [v13 di];
  v59 = &v59;
  v15 = ((v12 | 7) + *(v14 + 8)) & 0xFFFFFFFFFFFFFFF8;
  MEMORY[0x1EEE9AC00](v14);
  bzero(&v59 - v16, v17);
  v18 = [MEMORY[0x1E695DF88] data];
  v19 = [(KTVaudenaySAS *)self config];
  v20 = [v19 digestPrefix];

  if (v20)
  {
    v21 = [(KTVaudenaySAS *)self config];
    v22 = [v21 digestPrefix];
    [v18 appendData:v22];
  }

  v23 = [(KTVaudenaySAS *)self initiatorRandom];
  [v18 appendData:v23];

  v24 = [(KTVaudenaySAS *)self acceptorRandom];
  [v18 appendData:v24];

  v25 = [(KTVaudenaySAS *)self config];
  [v25 di];
  [v18 length];
  [v18 mutableBytes];
  cchmac_init();

  [v18 length];
  [v18 mutableBytes];
  cc_clear();
  v26 = [(KTVaudenaySAS *)self initiatorInfo];
  v62 = bswap32([v26 length]);

  v27 = [(KTVaudenaySAS *)self acceptorInfo];
  v61 = bswap32([v27 length]);

  v28 = [(KTVaudenaySAS *)self config];
  [v28 di];
  cchmac_update();

  v29 = [(KTVaudenaySAS *)self config];
  [v29 di];
  v30 = [(KTVaudenaySAS *)self initiatorInfo];
  [v30 length];
  v31 = [(KTVaudenaySAS *)self initiatorInfo];
  [v31 bytes];
  cchmac_update();

  v32 = [(KTVaudenaySAS *)self config];
  [v32 di];
  cchmac_update();

  v33 = [(KTVaudenaySAS *)self config];
  [v33 di];
  v34 = [(KTVaudenaySAS *)self acceptorInfo];
  [v34 length];
  v35 = [(KTVaudenaySAS *)self acceptorInfo];
  [v35 bytes];
  cchmac_update();

  v36 = objc_alloc(MEMORY[0x1E695DF88]);
  v37 = [(KTVaudenaySAS *)self config];
  v38 = [v36 initWithLength:{*objc_msgSend(v37, "di")}];

  v39 = [(KTVaudenaySAS *)self config];
  v40 = [v39 di];
  if (v38)
  {
    [v38 mutableBytes];
    cchmac_final();

    v41 = [(KTVaudenaySAS *)self config];
    v42 = *([v41 di] + 8);
    v43 = [(KTVaudenaySAS *)self config];
    v44 = v42 + *([v43 di] + 16) + 19;
    v45 = [(KTVaudenaySAS *)self config];
    v46 = *([v45 di] + 8);
    cc_clear();

    v47 = bswap64(*[v38 bytes]);
    v48 = [(KTVaudenaySAS *)self config];
    v49 = v47 % [v48 shortCodeMod10];

    v50 = MEMORY[0x1E696AEC0];
    v39 = [(KTVaudenaySAS *)self config];
    v51 = [v50 stringWithFormat:@"%0.*llu", objc_msgSend(v39, "shortCodeLength"), v49];
  }

  else
  {
    v54 = *(v40 + 8);
    v55 = [(KTVaudenaySAS *)self config];
    v56 = v54 + *([v55 di] + 16) + 19;
    v57 = [(KTVaudenaySAS *)self config];
    v58 = *([v57 di] + 8);
    cc_clear();

    v51 = 0;
  }

LABEL_12:
  v52 = *MEMORY[0x1E69E9840];

  return v51;
}

@end