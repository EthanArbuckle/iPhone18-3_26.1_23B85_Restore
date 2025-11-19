@interface KTIDSData
- (BOOL)isEqual:(id)a3;
- (KTIDSData)initWithCoder:(id)a3;
- (KTIDSData)initWithIdentities:(id)a3 uri:(id)a4 application:(id)a5 ktAccountKey:(id)a6;
- (void)encodeWithCoder:(id)a3;
@end

@implementation KTIDSData

- (KTIDSData)initWithIdentities:(id)a3 uri:(id)a4 application:(id)a5 ktAccountKey:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v18.receiver = self;
  v18.super_class = KTIDSData;
  v14 = [(KTIDSData *)&v18 init];
  v15 = v14;
  if (v14)
  {
    [(KTIDSData *)v14 setUri:v11];
    [(KTIDSData *)v15 setApplication:v12];
    [(KTIDSData *)v15 setIdentities:v10];
    [(KTIDSData *)v15 setKtAccountKey:v13];
    v16 = v15;
  }

  return v15;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(KTIDSData *)self uri];
  [v4 encodeObject:v5 forKey:@"uri"];

  v6 = [(KTIDSData *)self application];
  [v4 encodeObject:v6 forKey:@"application"];

  v7 = [(KTIDSData *)self ktAccountKey];
  [v4 encodeObject:v7 forKey:@"ktAccountKey"];

  v8 = [(KTIDSData *)self ktOptChangeReason];
  [v4 encodeObject:v8 forKey:@"ktOptChangeReason"];

  v9 = [(KTIDSData *)self identities];
  [v4 encodeObject:v9 forKey:@"identities"];

  v10 = [(KTIDSData *)self idsResponseTime];
  [v4 encodeObject:v10 forKey:@"idsResponseTime"];

  v11 = [(KTIDSData *)self traceUUID];
  [v4 encodeObject:v11 forKey:@"traceUUID"];
}

- (KTIDSData)initWithCoder:(id)a3
{
  v32[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v30.receiver = self;
  v30.super_class = KTIDSData;
  v5 = [(KTIDSData *)&v30 init];
  if (!v5)
  {
    goto LABEL_16;
  }

  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"uri"];
  [(KTIDSData *)v5 setUri:v6];

  v7 = [(KTIDSData *)v5 uri];

  if (!v7)
  {
    goto LABEL_17;
  }

  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"application"];
  [(KTIDSData *)v5 setApplication:v8];

  v7 = [(KTIDSData *)v5 application];

  if (!v7)
  {
    goto LABEL_17;
  }

  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ktAccountKey"];
  [(KTIDSData *)v5 setKtAccountKey:v9];

  v7 = [(KTIDSData *)v5 ktAccountKey];

  if (!v7)
  {
    goto LABEL_17;
  }

  v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ktOptChangeReason"];
  [(KTIDSData *)v5 setKtOptChangeReason:v10];

  v11 = MEMORY[0x1E695DFD8];
  v32[0] = objc_opt_class();
  v32[1] = objc_opt_class();
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:2];
  v13 = [v11 setWithArray:v12];
  v14 = [v4 decodeObjectOfClasses:v13 forKey:@"identities"];
  [(KTIDSData *)v5 setIdentities:v14];

  v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"idsResponseTime"];
  [(KTIDSData *)v5 setIdsResponseTime:v15];

  v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"traceUUID"];
  [(KTIDSData *)v5 setTraceUUID:v16];

  v17 = [(KTIDSData *)v5 identities];
  objc_opt_class();
  LOBYTE(v12) = objc_opt_isKindOfClass();

  if ((v12 & 1) == 0)
  {
LABEL_16:
    v7 = 0;
    goto LABEL_17;
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v18 = [(KTIDSData *)v5 identities];
  v19 = [v18 countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v27;
    while (2)
    {
      v22 = 0;
      do
      {
        if (*v27 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = *(*(&v26 + 1) + 8 * v22);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {

          goto LABEL_16;
        }

        ++v22;
      }

      while (v20 != v22);
      v20 = [v18 countByEnumeratingWithState:&v26 objects:v31 count:16];
      if (v20)
      {
        continue;
      }

      break;
    }
  }

  v7 = v5;
LABEL_17:

  v24 = *MEMORY[0x1E69E9840];
  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v18 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(KTIDSData *)self uri];
      v7 = [(KTIDSData *)v5 uri];
      v8 = [v6 isEqual:v7];

      if (!v8)
      {
        goto LABEL_22;
      }

      v9 = [(KTIDSData *)self application];
      v10 = [(KTIDSData *)v5 application];
      v11 = [v9 isEqual:v10];

      if (!v11)
      {
        goto LABEL_22;
      }

      v12 = [(KTIDSData *)self ktAccountKey];
      v13 = [(KTIDSData *)v5 ktAccountKey];
      v14 = v13;
      if (v12 == v13)
      {
      }

      else
      {
        v15 = [(KTIDSData *)self ktAccountKey];
        v16 = [(KTIDSData *)v5 ktAccountKey];
        v17 = [v15 isEqual:v16];

        if (!v17)
        {
          goto LABEL_22;
        }
      }

      v19 = [(KTIDSData *)self ktOptChangeReason];
      v20 = [(KTIDSData *)v5 ktOptChangeReason];
      v21 = v20;
      if (v19 == v20)
      {
      }

      else
      {
        v22 = [(KTIDSData *)self ktOptChangeReason];
        v23 = [(KTIDSData *)v5 ktOptChangeReason];
        v24 = [v22 isEqual:v23];

        if (!v24)
        {
          goto LABEL_22;
        }
      }

      v25 = [(KTIDSData *)self traceUUID];
      v26 = [(KTIDSData *)v5 traceUUID];
      v27 = v26;
      if (v25 == v26)
      {
      }

      else
      {
        v28 = [(KTIDSData *)self traceUUID];
        v29 = [(KTIDSData *)v5 traceUUID];
        v30 = [v28 isEqual:v29];

        if (!v30)
        {
          goto LABEL_22;
        }
      }

      v31 = [(KTIDSData *)self identities];
      v32 = [(KTIDSData *)v5 identities];
      v33 = [v31 isEqual:v32];

      if (v33)
      {
        v34 = [(KTIDSData *)self idsResponseTime];
        v35 = [(KTIDSData *)v5 idsResponseTime];
        if (v34 == v35)
        {
          v18 = 1;
        }

        else
        {
          v36 = [(KTIDSData *)self idsResponseTime];
          v37 = [(KTIDSData *)v5 idsResponseTime];
          v18 = [v36 isEqual:v37];
        }

        goto LABEL_23;
      }

LABEL_22:
      v18 = 0;
LABEL_23:

      goto LABEL_24;
    }

    v18 = 0;
  }

LABEL_24:

  return v18 & 1;
}

@end