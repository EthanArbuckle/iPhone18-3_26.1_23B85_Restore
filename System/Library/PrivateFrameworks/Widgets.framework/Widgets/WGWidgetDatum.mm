@interface WGWidgetDatum
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (WGWidgetDatum)initWithExtension:(id)extension;
@end

@implementation WGWidgetDatum

- (WGWidgetDatum)initWithExtension:(id)extension
{
  extensionCopy = extension;
  v9.receiver = self;
  v9.super_class = WGWidgetDatum;
  v6 = [(WGWidgetDatum *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_representedExtension, extension);
  }

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  selfCopy = self;
  v6 = equalCopy;
  v7 = v6;
  if (selfCopy && v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    datumIdentifier = [(WGWidgetDatum *)selfCopy datumIdentifier];
    datumIdentifier2 = [v7 datumIdentifier];
    v10 = [datumIdentifier isEqual:datumIdentifier2];

    if (!v10)
    {
      v12 = 0;
      goto LABEL_8;
    }

    representedExtension = selfCopy->_representedExtension;
    selfCopy = [v7 representedExtension];
    v12 = [(NSExtension *)representedExtension isEqual:selfCopy];
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
  wg_description = [(NSExtension *)self->_representedExtension wg_description];
  v6 = [v3 stringWithFormat:@"<%@: %p representedExtension: %@>", v4, self, wg_description];;

  return v6;
}

@end