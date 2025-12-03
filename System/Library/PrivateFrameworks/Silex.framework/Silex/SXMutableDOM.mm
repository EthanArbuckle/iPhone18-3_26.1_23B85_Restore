@interface SXMutableDOM
- (SXMutableDOM)initWithComponents:(id)components componentLayouts:(id)layouts componentStyles:(id)styles componentTextStyles:(id)textStyles textStyles:(id)a7 resources:(id)resources autoPlacement:(id)placement documentStyle:(id)self0 analysis:(id)self1 metadata:(id)self2;
@end

@implementation SXMutableDOM

- (SXMutableDOM)initWithComponents:(id)components componentLayouts:(id)layouts componentStyles:(id)styles componentTextStyles:(id)textStyles textStyles:(id)a7 resources:(id)resources autoPlacement:(id)placement documentStyle:(id)self0 analysis:(id)self1 metadata:(id)self2
{
  placementCopy = placement;
  v40.receiver = self;
  v40.super_class = SXMutableDOM;
  styleCopy = style;
  v20 = [(SXDOM *)&v40 initWithComponents:components componentLayouts:layouts componentStyles:styles componentTextStyles:textStyles textStyles:a7 resources:resources autoPlacement:placementCopy documentStyle:styleCopy analysis:analysis metadata:metadata];
  v21 = v20;
  if (v20)
  {
    v22 = [(SXComponents *)v20->super._components mutableCopy];
    components = v21->super._components;
    v21->super._components = v22;

    v24 = [(NSDictionary *)v21->super._componentLayouts mutableCopy];
    componentLayouts = v21->super._componentLayouts;
    v21->super._componentLayouts = v24;

    v26 = [(NSDictionary *)v21->super._componentStyles mutableCopy];
    componentStyles = v21->super._componentStyles;
    v21->super._componentStyles = v26;

    v28 = [(NSDictionary *)v21->super._componentTextStyles mutableCopy];
    componentTextStyles = v21->super._componentTextStyles;
    v21->super._componentTextStyles = v28;

    v30 = [(NSDictionary *)v21->super._textStyles mutableCopy];
    textStyles = v21->super._textStyles;
    v21->super._textStyles = v30;

    v32 = [(NSDictionary *)v21->super._resources mutableCopy];
    resources = v21->super._resources;
    v21->super._resources = v32;

    objc_storeStrong(&v21->super._autoPlacement, placement);
    objc_storeStrong(&v21->super._documentStyle, style);
    v34 = [(SXDOMAnalysis *)v21->super._analysis mutableCopy];
    analysis = v21->super._analysis;
    v21->super._analysis = v34;

    v36 = [(SXMetadata *)v21->super._metadata mutableCopy];
    metadata = v21->super._metadata;
    v21->super._metadata = v36;
  }

  return v21;
}

@end