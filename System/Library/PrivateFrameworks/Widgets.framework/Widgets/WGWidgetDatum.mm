@interface WGWidgetDatum
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (WGWidgetDatum)initWithExtension:(id)a3;
@end

@implementation WGWidgetDatum

- (WGWidgetDatum)initWithExtension:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = WGWidgetDatum;
  v6 = [(WGWidgetDatum *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_representedExtension, a3);
  }

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = v4;
  v7 = v6;
  if (v5 && v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = [(WGWidgetDatum *)v5 datumIdentifier];
    v9 = [v7 datumIdentifier];
    v10 = [v8 isEqual:v9];

    if (!v10)
    {
      v12 = 0;
      goto LABEL_8;
    }

    representedExtension = v5->_representedExtension;
    v5 = [v7 representedExtension];
    v12 = [(NSExtension *)representedExtension isEqual:v5];
  }

  else
  {

    v12 = 0;
  }

LABEL_8:
  return v12;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(NSExtension *)self->_representedExtension wg_description];
  v6 = [v3 stringWithFormat:@"<%@: %p representedExtension: %@>", v4, self, v5];;

  return v6;
}

@end