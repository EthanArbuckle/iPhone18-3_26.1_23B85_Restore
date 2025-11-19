@interface KmlRoutingInformation
- (KmlRoutingInformation)initWithInformation:(id)a3 readerIdentifier:(id)a4;
- (id)getReaderInformation;
@end

@implementation KmlRoutingInformation

- (KmlRoutingInformation)initWithInformation:(id)a3 readerIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v33.receiver = self;
  v33.super_class = KmlRoutingInformation;
  v8 = [(KmlRoutingInformation *)&v33 init];
  if (v8)
  {
    v9 = [v6 componentsSeparatedByString:@"."];
    if ([v9 count] == 3)
    {
      v10 = [v9 objectAtIndexedSubscript:0];
      manufacturer = v8->_manufacturer;
      v8->_manufacturer = v10;

      v12 = [v9 objectAtIndexedSubscript:1];
      regionString = v8->_regionString;
      v8->_regionString = v12;

      v14 = [v9 objectAtIndexedSubscript:2];
      brand = v8->_brand;
      v8->_brand = v14;

      if (v7)
      {
        v16 = v7;
LABEL_10:
        readerIdentifier = v8->_readerIdentifier;
        v8->_readerIdentifier = v16;
LABEL_13:

        goto LABEL_14;
      }
    }

    else
    {
      if ([v9 count] == 5)
      {
        v17 = [v9 objectAtIndexedSubscript:1];
        v18 = v8->_manufacturer;
        v8->_manufacturer = v17;

        v19 = [v9 objectAtIndexedSubscript:2];
        v20 = v8->_regionString;
        v8->_regionString = v19;

        v21 = [v9 objectAtIndexedSubscript:3];
        v22 = v8->_brand;
        v8->_brand = v21;

        v23 = MEMORY[0x1E695DEF0];
        readerIdentifier = [v9 objectAtIndexedSubscript:4];
        v25 = [v23 dataWithHexString:readerIdentifier];
        v26 = v25;
        if (v25)
        {
          v27 = v25;
        }

        else
        {
          v27 = objc_opt_new();
        }

        v31 = v8->_readerIdentifier;
        v8->_readerIdentifier = v27;

        goto LABEL_13;
      }

      v28 = v8->_manufacturer;
      v8->_manufacturer = @"Unknown";

      v29 = v8->_regionString;
      v8->_regionString = @"Unknown";

      v30 = v8->_brand;
      v8->_brand = @"Unknown";
    }

    v16 = objc_opt_new();
    goto LABEL_10;
  }

LABEL_14:

  return v8;
}

- (id)getReaderInformation
{
  if ([(NSData *)self->_readerIdentifier length])
  {
    v3 = [(NSData *)self->_readerIdentifier asHexString];
  }

  else
  {
    v3 = @"Unknown";
  }

  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"V.%@.%@.%@.%@", self->_manufacturer, self->_regionString, self->_brand, v3];

  return v4;
}

@end