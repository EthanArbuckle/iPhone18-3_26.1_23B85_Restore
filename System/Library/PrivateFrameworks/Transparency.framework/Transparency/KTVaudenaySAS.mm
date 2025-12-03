@interface KTVaudenaySAS
+ (id)randomValueOfLength:(unint64_t)length;
- (BOOL)setInitiatorUndisclosedRandom:(id)random;
- (BOOL)setPeerRandom:(id)random;
- (id)initAcceptorWithPublic:(id)public configuration:(id)configuration;
- (id)initInitiatorWithPublic:(id)public configuration:(id)configuration;
- (id)selfRandom;
- (id)shortAuthenticationString;
- (id)undisclosedInitiatorRandom;
- (id)undisclosedInitiatorValue:(id)value;
- (void)setPeerPublic:(id)public;
@end

@implementation KTVaudenaySAS

+ (id)randomValueOfLength:(unint64_t)length
{
  v4 = [objc_alloc(MEMORY[0x1E695DF88]) initWithLength:length];
  if (SecRandomCopyBytes(0, length, [v4 mutableBytes]))
  {
    abort();
  }

  return v4;
}

- (id)initInitiatorWithPublic:(id)public configuration:(id)configuration
{
  publicCopy = public;
  configurationCopy = configuration;
  v13.receiver = self;
  v13.super_class = KTVaudenaySAS;
  v8 = [(KTVaudenaySAS *)&v13 init];
  v9 = v8;
  if (v8)
  {
    [(KTVaudenaySAS *)v8 setInitiator:1];
    [(KTVaudenaySAS *)v9 setInitiatorInfo:publicCopy];
    [(KTVaudenaySAS *)v9 setConfig:configurationCopy];
    v10 = [KTVaudenaySAS randomValueOfLength:16];
    [(KTVaudenaySAS *)v9 setInitiatorRandom:v10];

    v11 = v9;
  }

  return v9;
}

- (id)initAcceptorWithPublic:(id)public configuration:(id)configuration
{
  publicCopy = public;
  configurationCopy = configuration;
  v13.receiver = self;
  v13.super_class = KTVaudenaySAS;
  v8 = [(KTVaudenaySAS *)&v13 init];
  v9 = v8;
  if (v8)
  {
    [(KTVaudenaySAS *)v8 setInitiator:0];
    [(KTVaudenaySAS *)v9 setAcceptorInfo:publicCopy];
    [(KTVaudenaySAS *)v9 setConfig:configurationCopy];
    v10 = [KTVaudenaySAS randomValueOfLength:16];
    [(KTVaudenaySAS *)v9 setAcceptorRandom:v10];

    v11 = v9;
  }

  return v9;
}

- (void)setPeerPublic:(id)public
{
  publicCopy = public;
  if ([(KTVaudenaySAS *)self initiator])
  {
    [(KTVaudenaySAS *)self setAcceptorInfo:publicCopy];
  }

  else
  {
    [(KTVaudenaySAS *)self setInitiatorInfo:publicCopy];
  }
}

- (id)undisclosedInitiatorValue:(id)value
{
  v4 = MEMORY[0x1E695DF88];
  valueCopy = value;
  v6 = [v4 alloc];
  config = [(KTVaudenaySAS *)self config];
  v8 = [v6 initWithLength:{*objc_msgSend(config, "di")}];

  config2 = [(KTVaudenaySAS *)self config];
  [config2 di];
  [valueCopy length];
  [valueCopy bytes];

  [v8 mutableBytes];
  ccdigest();

  return v8;
}

- (id)undisclosedInitiatorRandom
{
  initiatorRandom = [(KTVaudenaySAS *)self initiatorRandom];
  v4 = [(KTVaudenaySAS *)self undisclosedInitiatorValue:initiatorRandom];

  return v4;
}

- (BOOL)setInitiatorUndisclosedRandom:(id)random
{
  randomCopy = random;
  if ([(KTVaudenaySAS *)self initiator])
  {
    goto LABEL_5;
  }

  sentUndisclosedRandom = [(KTVaudenaySAS *)self sentUndisclosedRandom];
  if (!sentUndisclosedRandom)
  {
    goto LABEL_4;
  }

  v6 = sentUndisclosedRandom;
  sentUndisclosedRandom2 = [(KTVaudenaySAS *)self sentUndisclosedRandom];
  v8 = [sentUndisclosedRandom2 isEqual:randomCopy];

  if (!v8)
  {
LABEL_5:
    v10 = 0;
  }

  else
  {
LABEL_4:
    v9 = [MEMORY[0x1E695DEF0] dataWithData:randomCopy];
    [(KTVaudenaySAS *)self setSentUndisclosedRandom:v9];

    v10 = 1;
  }

  return v10;
}

- (BOOL)setPeerRandom:(id)random
{
  randomCopy = random;
  if ([randomCopy length] != 16)
  {
    goto LABEL_8;
  }

  if (![(KTVaudenaySAS *)self initiator])
  {
    sentUndisclosedRandom = [(KTVaudenaySAS *)self sentUndisclosedRandom];

    if (sentUndisclosedRandom)
    {
      v5 = [(KTVaudenaySAS *)self undisclosedInitiatorValue:randomCopy];
      sentUndisclosedRandom2 = [(KTVaudenaySAS *)self sentUndisclosedRandom];
      v6 = [v5 isEqual:sentUndisclosedRandom2];

      if (v6)
      {
        v9 = [MEMORY[0x1E695DEF0] dataWithData:randomCopy];
        [(KTVaudenaySAS *)self setInitiatorRandom:v9];
      }

      goto LABEL_7;
    }

LABEL_8:
    LOBYTE(v6) = 0;
    goto LABEL_9;
  }

  v5 = [MEMORY[0x1E695DEF0] dataWithData:randomCopy];
  [(KTVaudenaySAS *)self setAcceptorRandom:v5];
  LOBYTE(v6) = 1;
LABEL_7:

LABEL_9:
  return v6;
}

- (id)selfRandom
{
  initiator = [(KTVaudenaySAS *)self initiator];
  acceptorRandom = [(KTVaudenaySAS *)self acceptorRandom];
  initiatorRandom = acceptorRandom;
  if (initiator)
  {

    if (initiatorRandom)
    {
      initiatorRandom = [(KTVaudenaySAS *)self initiatorRandom];
    }
  }

  return initiatorRandom;
}

- (id)shortAuthenticationString
{
  v63 = *MEMORY[0x1E69E9840];
  initiatorInfo = [(KTVaudenaySAS *)self initiatorInfo];
  if (!initiatorInfo)
  {
    goto LABEL_11;
  }

  v4 = initiatorInfo;
  initiatorRandom = [(KTVaudenaySAS *)self initiatorRandom];
  if (!initiatorRandom)
  {
    goto LABEL_10;
  }

  v6 = initiatorRandom;
  acceptorInfo = [(KTVaudenaySAS *)self acceptorInfo];
  if (!acceptorInfo)
  {

LABEL_10:
    goto LABEL_11;
  }

  v8 = acceptorInfo;
  acceptorRandom = [(KTVaudenaySAS *)self acceptorRandom];

  if (!acceptorRandom)
  {
LABEL_11:
    v51 = 0;
    goto LABEL_12;
  }

  config = [(KTVaudenaySAS *)self config];
  v10 = *([config di] + 8);
  config2 = [(KTVaudenaySAS *)self config];
  v12 = v10 + *([config2 di] + 16) + 19;
  config3 = [(KTVaudenaySAS *)self config];
  v14 = [config3 di];
  v59 = &v59;
  v15 = ((v12 | 7) + *(v14 + 8)) & 0xFFFFFFFFFFFFFFF8;
  MEMORY[0x1EEE9AC00](v14);
  bzero(&v59 - v16, v17);
  data = [MEMORY[0x1E695DF88] data];
  config4 = [(KTVaudenaySAS *)self config];
  digestPrefix = [config4 digestPrefix];

  if (digestPrefix)
  {
    config5 = [(KTVaudenaySAS *)self config];
    digestPrefix2 = [config5 digestPrefix];
    [data appendData:digestPrefix2];
  }

  initiatorRandom2 = [(KTVaudenaySAS *)self initiatorRandom];
  [data appendData:initiatorRandom2];

  acceptorRandom2 = [(KTVaudenaySAS *)self acceptorRandom];
  [data appendData:acceptorRandom2];

  config6 = [(KTVaudenaySAS *)self config];
  [config6 di];
  [data length];
  [data mutableBytes];
  cchmac_init();

  [data length];
  [data mutableBytes];
  cc_clear();
  initiatorInfo2 = [(KTVaudenaySAS *)self initiatorInfo];
  v62 = bswap32([initiatorInfo2 length]);

  acceptorInfo2 = [(KTVaudenaySAS *)self acceptorInfo];
  v61 = bswap32([acceptorInfo2 length]);

  config7 = [(KTVaudenaySAS *)self config];
  [config7 di];
  cchmac_update();

  config8 = [(KTVaudenaySAS *)self config];
  [config8 di];
  initiatorInfo3 = [(KTVaudenaySAS *)self initiatorInfo];
  [initiatorInfo3 length];
  initiatorInfo4 = [(KTVaudenaySAS *)self initiatorInfo];
  [initiatorInfo4 bytes];
  cchmac_update();

  config9 = [(KTVaudenaySAS *)self config];
  [config9 di];
  cchmac_update();

  config10 = [(KTVaudenaySAS *)self config];
  [config10 di];
  acceptorInfo3 = [(KTVaudenaySAS *)self acceptorInfo];
  [acceptorInfo3 length];
  acceptorInfo4 = [(KTVaudenaySAS *)self acceptorInfo];
  [acceptorInfo4 bytes];
  cchmac_update();

  v36 = objc_alloc(MEMORY[0x1E695DF88]);
  config11 = [(KTVaudenaySAS *)self config];
  v38 = [v36 initWithLength:{*objc_msgSend(config11, "di")}];

  config12 = [(KTVaudenaySAS *)self config];
  v40 = [config12 di];
  if (v38)
  {
    [v38 mutableBytes];
    cchmac_final();

    config13 = [(KTVaudenaySAS *)self config];
    v42 = *([config13 di] + 8);
    config14 = [(KTVaudenaySAS *)self config];
    v44 = v42 + *([config14 di] + 16) + 19;
    config15 = [(KTVaudenaySAS *)self config];
    v46 = *([config15 di] + 8);
    cc_clear();

    v47 = bswap64(*[v38 bytes]);
    config16 = [(KTVaudenaySAS *)self config];
    v49 = v47 % [config16 shortCodeMod10];

    v50 = MEMORY[0x1E696AEC0];
    config12 = [(KTVaudenaySAS *)self config];
    v51 = [v50 stringWithFormat:@"%0.*llu", objc_msgSend(config12, "shortCodeLength"), v49];
  }

  else
  {
    v54 = *(v40 + 8);
    config17 = [(KTVaudenaySAS *)self config];
    v56 = v54 + *([config17 di] + 16) + 19;
    config18 = [(KTVaudenaySAS *)self config];
    v58 = *([config18 di] + 8);
    cc_clear();

    v51 = 0;
  }

LABEL_12:
  v52 = *MEMORY[0x1E69E9840];

  return v51;
}

@end