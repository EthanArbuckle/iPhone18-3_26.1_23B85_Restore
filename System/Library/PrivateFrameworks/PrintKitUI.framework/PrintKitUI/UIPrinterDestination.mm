@interface UIPrinterDestination
- (UIPrinterDestination)initWithCoder:(id)a3;
- (UIPrinterDestination)initWithURL:(NSURL *)url;
- (id)dictionaryRepresentation;
- (void)encodeWithCoder:(id)a3;
@end

@implementation UIPrinterDestination

- (UIPrinterDestination)initWithURL:(NSURL *)url
{
  v4 = url;
  v11.receiver = self;
  v11.super_class = UIPrinterDestination;
  v5 = [(UIPrinterDestination *)&v11 init];
  if (v5)
  {
    v6 = MEMORY[0x277CBEBC0];
    v7 = [(NSURL *)v4 absoluteString];
    v8 = [v6 URLWithString:v7];
    v9 = v5->_URL;
    v5->_URL = v8;
  }

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = objc_opt_new();
  v4 = [(NSURL *)self->_URL absoluteString];
  [v3 setObject:v4 forKeyedSubscript:@"uri"];

  txtRecord = self->_txtRecord;
  if (txtRecord)
  {
    [v3 setObject:txtRecord forKeyedSubscript:@"txt"];
  }

  displayName = self->_displayName;
  if (displayName)
  {
    [v3 setObject:displayName forKeyedSubscript:@"display-name"];
  }

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(UIPrinterDestination *)self dictionaryRepresentation];
  [v4 encodeObject:v5 forKey:@"asDict"];
}

- (UIPrinterDestination)initWithCoder:(id)a3
{
  v4 = [a3 decodeObjectForKey:@"asDict"];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 objectForKeyedSubscript:@"uri"];
    if (v6)
    {
      v7 = [MEMORY[0x277CBEBC0] URLWithString:v6];
      v8 = [(UIPrinterDestination *)self initWithURL:v7];

      if (v8)
      {
        v9 = [v5 objectForKeyedSubscript:@"display-name"];
        [(UIPrinterDestination *)v8 setDisplayName:v9];

        v10 = [v5 objectForKeyedSubscript:@"txt"];
        [(UIPrinterDestination *)v8 setTxtRecord:v10];
      }

      self = v8;
      v11 = self;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

@end