@interface KTIDSData
- (BOOL)isEqual:(id)equal;
- (KTIDSData)initWithCoder:(id)coder;
- (KTIDSData)initWithIdentities:(id)identities uri:(id)uri application:(id)application ktAccountKey:(id)key;
- (void)encodeWithCoder:(id)coder;
@end

@implementation KTIDSData

- (KTIDSData)initWithIdentities:(id)identities uri:(id)uri application:(id)application ktAccountKey:(id)key
{
  identitiesCopy = identities;
  uriCopy = uri;
  applicationCopy = application;
  keyCopy = key;
  v18.receiver = self;
  v18.super_class = KTIDSData;
  v14 = [(KTIDSData *)&v18 init];
  v15 = v14;
  if (v14)
  {
    [(KTIDSData *)v14 setUri:uriCopy];
    [(KTIDSData *)v15 setApplication:applicationCopy];
    [(KTIDSData *)v15 setIdentities:identitiesCopy];
    [(KTIDSData *)v15 setKtAccountKey:keyCopy];
    v16 = v15;
  }

  return v15;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(KTIDSData *)self uri];
  [coderCopy encodeObject:v5 forKey:@"uri"];

  application = [(KTIDSData *)self application];
  [coderCopy encodeObject:application forKey:@"application"];

  ktAccountKey = [(KTIDSData *)self ktAccountKey];
  [coderCopy encodeObject:ktAccountKey forKey:@"ktAccountKey"];

  ktOptChangeReason = [(KTIDSData *)self ktOptChangeReason];
  [coderCopy encodeObject:ktOptChangeReason forKey:@"ktOptChangeReason"];

  identities = [(KTIDSData *)self identities];
  [coderCopy encodeObject:identities forKey:@"identities"];

  idsResponseTime = [(KTIDSData *)self idsResponseTime];
  [coderCopy encodeObject:idsResponseTime forKey:@"idsResponseTime"];

  traceUUID = [(KTIDSData *)self traceUUID];
  [coderCopy encodeObject:traceUUID forKey:@"traceUUID"];
}

- (KTIDSData)initWithCoder:(id)coder
{
  v32[2] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v30.receiver = self;
  v30.super_class = KTIDSData;
  v5 = [(KTIDSData *)&v30 init];
  if (!v5)
  {
    goto LABEL_16;
  }

  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"uri"];
  [(KTIDSData *)v5 setUri:v6];

  application = [(KTIDSData *)v5 uri];

  if (!application)
  {
    goto LABEL_17;
  }

  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"application"];
  [(KTIDSData *)v5 setApplication:v8];

  application = [(KTIDSData *)v5 application];

  if (!application)
  {
    goto LABEL_17;
  }

  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ktAccountKey"];
  [(KTIDSData *)v5 setKtAccountKey:v9];

  application = [(KTIDSData *)v5 ktAccountKey];

  if (!application)
  {
    goto LABEL_17;
  }

  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ktOptChangeReason"];
  [(KTIDSData *)v5 setKtOptChangeReason:v10];

  v11 = MEMORY[0x1E695DFD8];
  v32[0] = objc_opt_class();
  v32[1] = objc_opt_class();
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:2];
  v13 = [v11 setWithArray:v12];
  v14 = [coderCopy decodeObjectOfClasses:v13 forKey:@"identities"];
  [(KTIDSData *)v5 setIdentities:v14];

  v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"idsResponseTime"];
  [(KTIDSData *)v5 setIdsResponseTime:v15];

  v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"traceUUID"];
  [(KTIDSData *)v5 setTraceUUID:v16];

  identities = [(KTIDSData *)v5 identities];
  objc_opt_class();
  LOBYTE(v12) = objc_opt_isKindOfClass();

  if ((v12 & 1) == 0)
  {
LABEL_16:
    application = 0;
    goto LABEL_17;
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  identities2 = [(KTIDSData *)v5 identities];
  v19 = [identities2 countByEnumeratingWithState:&v26 objects:v31 count:16];
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
          objc_enumerationMutation(identities2);
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
      v20 = [identities2 countByEnumeratingWithState:&v26 objects:v31 count:16];
      if (v20)
      {
        continue;
      }

      break;
    }
  }

  application = v5;
LABEL_17:

  v24 = *MEMORY[0x1E69E9840];
  return application;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v18 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      v6 = [(KTIDSData *)self uri];
      v7 = [(KTIDSData *)v5 uri];
      v8 = [v6 isEqual:v7];

      if (!v8)
      {
        goto LABEL_22;
      }

      application = [(KTIDSData *)self application];
      application2 = [(KTIDSData *)v5 application];
      v11 = [application isEqual:application2];

      if (!v11)
      {
        goto LABEL_22;
      }

      ktAccountKey = [(KTIDSData *)self ktAccountKey];
      ktAccountKey2 = [(KTIDSData *)v5 ktAccountKey];
      v14 = ktAccountKey2;
      if (ktAccountKey == ktAccountKey2)
      {
      }

      else
      {
        ktAccountKey3 = [(KTIDSData *)self ktAccountKey];
        ktAccountKey4 = [(KTIDSData *)v5 ktAccountKey];
        v17 = [ktAccountKey3 isEqual:ktAccountKey4];

        if (!v17)
        {
          goto LABEL_22;
        }
      }

      ktOptChangeReason = [(KTIDSData *)self ktOptChangeReason];
      ktOptChangeReason2 = [(KTIDSData *)v5 ktOptChangeReason];
      v21 = ktOptChangeReason2;
      if (ktOptChangeReason == ktOptChangeReason2)
      {
      }

      else
      {
        ktOptChangeReason3 = [(KTIDSData *)self ktOptChangeReason];
        ktOptChangeReason4 = [(KTIDSData *)v5 ktOptChangeReason];
        v24 = [ktOptChangeReason3 isEqual:ktOptChangeReason4];

        if (!v24)
        {
          goto LABEL_22;
        }
      }

      traceUUID = [(KTIDSData *)self traceUUID];
      traceUUID2 = [(KTIDSData *)v5 traceUUID];
      v27 = traceUUID2;
      if (traceUUID == traceUUID2)
      {
      }

      else
      {
        traceUUID3 = [(KTIDSData *)self traceUUID];
        traceUUID4 = [(KTIDSData *)v5 traceUUID];
        v30 = [traceUUID3 isEqual:traceUUID4];

        if (!v30)
        {
          goto LABEL_22;
        }
      }

      identities = [(KTIDSData *)self identities];
      identities2 = [(KTIDSData *)v5 identities];
      v33 = [identities isEqual:identities2];

      if (v33)
      {
        idsResponseTime = [(KTIDSData *)self idsResponseTime];
        idsResponseTime2 = [(KTIDSData *)v5 idsResponseTime];
        if (idsResponseTime == idsResponseTime2)
        {
          v18 = 1;
        }

        else
        {
          idsResponseTime3 = [(KTIDSData *)self idsResponseTime];
          idsResponseTime4 = [(KTIDSData *)v5 idsResponseTime];
          v18 = [idsResponseTime3 isEqual:idsResponseTime4];
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