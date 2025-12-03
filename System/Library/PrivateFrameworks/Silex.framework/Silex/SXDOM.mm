@interface SXDOM
- (SXDOM)initWithComponents:(id)components componentLayouts:(id)layouts componentStyles:(id)styles componentTextStyles:(id)textStyles textStyles:(id)a7 resources:(id)resources autoPlacement:(id)placement documentStyle:(id)self0 analysis:(id)self1 metadata:(id)self2;
- (id)debugDescription;
@end

@implementation SXDOM

- (SXDOM)initWithComponents:(id)components componentLayouts:(id)layouts componentStyles:(id)styles componentTextStyles:(id)textStyles textStyles:(id)a7 resources:(id)resources autoPlacement:(id)placement documentStyle:(id)self0 analysis:(id)self1 metadata:(id)self2
{
  componentsCopy = components;
  layoutsCopy = layouts;
  stylesCopy = styles;
  textStylesCopy = textStyles;
  v22 = a7;
  resourcesCopy = resources;
  placementCopy = placement;
  styleCopy = style;
  analysisCopy = analysis;
  v54.receiver = self;
  v54.super_class = SXDOM;
  v25 = [(SXDOM *)&v54 init];
  if (v25)
  {
    v51 = textStylesCopy;
    v26 = stylesCopy;
    if (componentsCopy)
    {
      v27 = componentsCopy;
    }

    else
    {
      v27 = objc_opt_new();
    }

    components = v25->_components;
    v25->_components = v27;

    v50 = layoutsCopy;
    v29 = [layoutsCopy copy];
    v30 = v29;
    v31 = MEMORY[0x1E695E0F8];
    if (v29)
    {
      v32 = v29;
    }

    else
    {
      v32 = MEMORY[0x1E695E0F8];
    }

    objc_storeStrong(&v25->_componentLayouts, v32);

    v33 = [v26 copy];
    v34 = v33;
    if (v33)
    {
      v35 = v33;
    }

    else
    {
      v35 = v31;
    }

    objc_storeStrong(&v25->_componentStyles, v35);

    v36 = [v51 copy];
    v37 = v36;
    if (v36)
    {
      v38 = v36;
    }

    else
    {
      v38 = v31;
    }

    objc_storeStrong(&v25->_componentTextStyles, v38);

    v39 = [v22 copy];
    v40 = v39;
    if (v39)
    {
      v41 = v39;
    }

    else
    {
      v41 = v31;
    }

    objc_storeStrong(&v25->_textStyles, v41);

    v42 = [resourcesCopy copy];
    v43 = v42;
    if (v42)
    {
      v44 = v42;
    }

    else
    {
      v44 = v31;
    }

    objc_storeStrong(&v25->_resources, v44);

    objc_storeStrong(&v25->_autoPlacement, placement);
    objc_storeStrong(&v25->_documentStyle, style);
    v45 = [analysisCopy copy];
    v46 = v45;
    if (v45)
    {
      v47 = v45;
    }

    else
    {
      v47 = objc_opt_new();
    }

    analysis = v25->_analysis;
    v25->_analysis = v47;

    objc_storeStrong(&v25->_metadata, v25->_metadata);
    stylesCopy = v26;
    layoutsCopy = v50;
    textStylesCopy = v51;
  }

  return v25;
}

- (id)debugDescription
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p\n", objc_opt_class(), self];;
  components = [(SXDOM *)self components];
  v5 = [components debugDescription];
  [v3 appendFormat:@"\ncomponents: %@", v5];

  componentLayouts = [(SXDOM *)self componentLayouts];
  [v3 appendFormat:@"\ncomponentLayouts: %@", componentLayouts];

  componentStyles = [(SXDOM *)self componentStyles];
  [v3 appendFormat:@"\ncomponentStyles: %@", componentStyles];

  componentTextStyles = [(SXDOM *)self componentTextStyles];
  [v3 appendFormat:@"\ncomponentTextStyles: %@", componentTextStyles];

  textStyles = [(SXDOM *)self textStyles];
  [v3 appendFormat:@"\ntextStyles: %@", textStyles];

  resources = [(SXDOM *)self resources];
  [v3 appendFormat:@"\nresources: %@", resources];

  autoPlacement = [(SXDOM *)self autoPlacement];
  [v3 appendFormat:@"\nautoPlacement: %@", autoPlacement];

  documentStyle = [(SXDOM *)self documentStyle];
  [v3 appendFormat:@"\ndocumentStyle: %@", documentStyle];

  analysis = [(SXDOM *)self analysis];
  [v3 appendFormat:@"\nanalysis: %@", analysis];

  metadata = [(SXDOM *)self metadata];
  [v3 appendFormat:@"\nmetadata: %@", metadata];

  [v3 appendString:@">"];

  return v3;
}

@end