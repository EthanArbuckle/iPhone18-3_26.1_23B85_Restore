@interface SXDOM
- (SXDOM)initWithComponents:(id)a3 componentLayouts:(id)a4 componentStyles:(id)a5 componentTextStyles:(id)a6 textStyles:(id)a7 resources:(id)a8 autoPlacement:(id)a9 documentStyle:(id)a10 analysis:(id)a11 metadata:(id)a12;
- (id)debugDescription;
@end

@implementation SXDOM

- (SXDOM)initWithComponents:(id)a3 componentLayouts:(id)a4 componentStyles:(id)a5 componentTextStyles:(id)a6 textStyles:(id)a7 resources:(id)a8 autoPlacement:(id)a9 documentStyle:(id)a10 analysis:(id)a11 metadata:(id)a12
{
  v18 = a3;
  v19 = a4;
  v20 = a5;
  v21 = a6;
  v22 = a7;
  v23 = a8;
  v53 = a9;
  v52 = a10;
  v24 = a11;
  v54.receiver = self;
  v54.super_class = SXDOM;
  v25 = [(SXDOM *)&v54 init];
  if (v25)
  {
    v51 = v21;
    v26 = v20;
    if (v18)
    {
      v27 = v18;
    }

    else
    {
      v27 = objc_opt_new();
    }

    components = v25->_components;
    v25->_components = v27;

    v50 = v19;
    v29 = [v19 copy];
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

    v42 = [v23 copy];
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

    objc_storeStrong(&v25->_autoPlacement, a9);
    objc_storeStrong(&v25->_documentStyle, a10);
    v45 = [v24 copy];
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
    v20 = v26;
    v19 = v50;
    v21 = v51;
  }

  return v25;
}

- (id)debugDescription
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p\n", objc_opt_class(), self];;
  v4 = [(SXDOM *)self components];
  v5 = [v4 debugDescription];
  [v3 appendFormat:@"\ncomponents: %@", v5];

  v6 = [(SXDOM *)self componentLayouts];
  [v3 appendFormat:@"\ncomponentLayouts: %@", v6];

  v7 = [(SXDOM *)self componentStyles];
  [v3 appendFormat:@"\ncomponentStyles: %@", v7];

  v8 = [(SXDOM *)self componentTextStyles];
  [v3 appendFormat:@"\ncomponentTextStyles: %@", v8];

  v9 = [(SXDOM *)self textStyles];
  [v3 appendFormat:@"\ntextStyles: %@", v9];

  v10 = [(SXDOM *)self resources];
  [v3 appendFormat:@"\nresources: %@", v10];

  v11 = [(SXDOM *)self autoPlacement];
  [v3 appendFormat:@"\nautoPlacement: %@", v11];

  v12 = [(SXDOM *)self documentStyle];
  [v3 appendFormat:@"\ndocumentStyle: %@", v12];

  v13 = [(SXDOM *)self analysis];
  [v3 appendFormat:@"\nanalysis: %@", v13];

  v14 = [(SXDOM *)self metadata];
  [v3 appendFormat:@"\nmetadata: %@", v14];

  [v3 appendString:@">"];

  return v3;
}

@end