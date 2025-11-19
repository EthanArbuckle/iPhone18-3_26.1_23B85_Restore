@interface UIStatusBarComposedData
- (BOOL)isEqual:(id)a3;
- (UIStatusBarComposedData)initWithRawData:(id *)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)setItem:(int)a3 enabled:(BOOL)a4;
@end

@implementation UIStatusBarComposedData

- (UIStatusBarComposedData)initWithRawData:(id *)a3
{
  v7.receiver = self;
  v7.super_class = UIStatusBarComposedData;
  v4 = [(UIStatusBarComposedData *)&v7 init];
  v5 = v4;
  if (v4)
  {
    if (a3)
    {
      memcpy(&v4->_rawData, a3, sizeof(v4->_rawData));
    }

    else
    {

      return 0;
    }
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "initWithRawData:", -[UIStatusBarComposedData rawData](self, "rawData")}];
  v5 = [(UIStatusBarComposedData *)self doubleHeightStatus];
  [v4 setDoubleHeightStatus:v5];

  for (i = 0; i != 52; ++i)
  {
    [v4 setItem:i enabled:{-[UIStatusBarComposedData isItemEnabled:](self, "isItemEnabled:", i)}];
  }

  return v4;
}

- (void)setItem:(int)a3 enabled:(BOOL)a4
{
  if (a3 <= 0x33)
  {
    self->_itemEnabled[a3] = a4;
  }
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    if (memcmp(&self->_rawData, [v5 rawData], 0xF28uLL))
    {
LABEL_3:
      v6 = 0;
LABEL_17:

      goto LABEL_18;
    }

    v7 = [(UIStatusBarComposedData *)self doubleHeightStatus];
    v8 = [v5 doubleHeightStatus];
    v9 = v7;
    v10 = v8;
    v11 = v10;
    if (v9 == v10)
    {
    }

    else
    {
      v6 = 0;
      if (!v9 || !v10)
      {
LABEL_16:

        goto LABEL_17;
      }

      v12 = [v9 isEqual:v10];

      if ((v12 & 1) == 0)
      {
        goto LABEL_3;
      }
    }

    v13 = [(UIStatusBarComposedData *)self systemNavigationItem];
    v14 = [v5 systemNavigationItem];
    v9 = v13;
    v15 = v14;
    v11 = v15;
    if (v9 == v15)
    {
      v6 = 1;
    }

    else
    {
      v6 = 0;
      if (v9 && v15)
      {
        v6 = [v9 isEqual:v15];
      }
    }

    goto LABEL_16;
  }

  v6 = 0;
LABEL_18:

  return v6;
}

- (id)description
{
  v8.receiver = self;
  v8.super_class = UIStatusBarComposedData;
  v3 = [(UIStatusBarComposedData *)&v8 description];
  v4 = [v3 mutableCopy];

  [v4 appendFormat:@"\nPrimary breadcrumb override: “%s”", -[UIStatusBarComposedData rawData](self, "rawData") + 2537];
  [v4 appendFormat:@"\nSecondary breadcrumb override: “%s”", -[UIStatusBarComposedData rawData](self, "rawData") + 2793];
  [v4 appendFormat:@"\nService: “%s”", -[UIStatusBarComposedData rawData](self, "rawData") + 448];
  if ([(UIStatusBarComposedData *)self isItemEnabled:6])
  {
    v5 = @"YES";
  }

  else
  {
    v5 = @"NO";
  }

  [v4 appendFormat:@"\nService Enabled? %@", v5];
  [v4 appendFormat:@"\nPerson Name: “%s”", -[UIStatusBarComposedData rawData](self, "rawData") + 3049];
  if ([(UIStatusBarComposedData *)self isItemEnabled:8])
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  [v4 appendFormat:@"\nPerson Enabled? %@", v6];

  return v4;
}

@end