@interface SXMutableDOM
- (SXMutableDOM)initWithComponents:(id)a3 componentLayouts:(id)a4 componentStyles:(id)a5 componentTextStyles:(id)a6 textStyles:(id)a7 resources:(id)a8 autoPlacement:(id)a9 documentStyle:(id)a10 analysis:(id)a11 metadata:(id)a12;
@end

@implementation SXMutableDOM

- (SXMutableDOM)initWithComponents:(id)a3 componentLayouts:(id)a4 componentStyles:(id)a5 componentTextStyles:(id)a6 textStyles:(id)a7 resources:(id)a8 autoPlacement:(id)a9 documentStyle:(id)a10 analysis:(id)a11 metadata:(id)a12
{
  v18 = a9;
  v40.receiver = self;
  v40.super_class = SXMutableDOM;
  v19 = a10;
  v20 = [(SXDOM *)&v40 initWithComponents:a3 componentLayouts:a4 componentStyles:a5 componentTextStyles:a6 textStyles:a7 resources:a8 autoPlacement:v18 documentStyle:v19 analysis:a11 metadata:a12];
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

    objc_storeStrong(&v21->super._autoPlacement, a9);
    objc_storeStrong(&v21->super._documentStyle, a10);
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