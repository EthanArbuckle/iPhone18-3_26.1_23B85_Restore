@interface SLShareableContentMetadata
- (NSString)description;
- (SLShareableContentMetadata)initWithBSXPCCoder:(id)a3;
- (SLShareableContentMetadata)initWithCoder:(id)a3;
- (SLShareableContentMetadata)initWithSceneIdentifier:(id)a3 bundleIdentifier:(id)a4 representations:(id)a5 metadata:(id)a6 highlightURL:(id)a7;
- (void)encodeWithBSXPCCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SLShareableContentMetadata

- (SLShareableContentMetadata)initWithSceneIdentifier:(id)a3 bundleIdentifier:(id)a4 representations:(id)a5 metadata:(id)a6 highlightURL:(id)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v23.receiver = self;
  v23.super_class = SLShareableContentMetadata;
  v18 = [(SLShareableContentMetadata *)&v23 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_sceneIdentifier, a3);
    objc_storeStrong(&v19->_bundleIdentifier, a4);
    v20 = [v15 copy];
    representations = v19->_representations;
    v19->_representations = v20;

    objc_storeStrong(&v19->_metadata, a6);
    objc_storeStrong(&v19->_highlightURL, a7);
  }

  return v19;
}

- (NSString)description
{
  v3 = [MEMORY[0x277CCAB68] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  v4 = [(SLShareableContentMetadata *)self sceneIdentifier];
  [v3 appendFormat:@" sceneIdentifier=%@", v4];

  v5 = [(SLShareableContentMetadata *)self bundleIdentifier];
  [v3 appendFormat:@" bundleIdentifier=%@", v5];

  v6 = [(SLShareableContentMetadata *)self representations];
  [v3 appendFormat:@" representations=%@", v6];

  v7 = [(SLShareableContentMetadata *)self highlightURL];
  [v3 appendFormat:@" highlightURL=%@", v7];

  [v3 appendString:@">"];
  v8 = [v3 copy];

  return v8;
}

- (SLShareableContentMetadata)initWithBSXPCCoder:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(sel_sceneIdentifier);
  v7 = [v4 decodeObjectOfClass:v5 forKey:v6];

  v8 = objc_opt_class();
  v9 = NSStringFromSelector(sel_bundleIdentifier);
  v10 = [v4 decodeObjectOfClass:v8 forKey:v9];

  v11 = objc_opt_class();
  v12 = objc_opt_class();
  v13 = NSStringFromSelector(sel_representations);
  v14 = [v4 decodeCollectionOfClass:v11 containingClass:v12 forKey:v13];

  v15 = objc_opt_class();
  v16 = NSStringFromSelector(sel_metadata);
  v17 = [v4 decodeObjectOfClass:v15 forKey:v16];

  v18 = [MEMORY[0x277CD46C8] metadataWithDataRepresentation:v17];
  v19 = objc_opt_class();
  v20 = NSStringFromSelector(sel_highlightURL);
  v21 = [v4 decodeObjectOfClass:v19 forKey:v20];

  v22 = [(SLShareableContentMetadata *)self initWithSceneIdentifier:v7 bundleIdentifier:v10 representations:v14 metadata:v18 highlightURL:v21];
  return v22;
}

- (void)encodeWithBSXPCCoder:(id)a3
{
  v4 = a3;
  v5 = [(SLShareableContentMetadata *)self sceneIdentifier];
  v6 = NSStringFromSelector(sel_sceneIdentifier);
  [v4 encodeObject:v5 forKey:v6];

  v7 = [(SLShareableContentMetadata *)self bundleIdentifier];
  v8 = NSStringFromSelector(sel_bundleIdentifier);
  [v4 encodeObject:v7 forKey:v8];

  v9 = [(SLShareableContentMetadata *)self representations];
  v10 = NSStringFromSelector(sel_representations);
  [v4 encodeCollection:v9 forKey:v10];

  v11 = [(SLShareableContentMetadata *)self metadata];
  v12 = [v11 dataRepresentation];
  v13 = NSStringFromSelector(sel_metadata);
  [v4 encodeObject:v12 forKey:v13];

  v15 = [(SLShareableContentMetadata *)self highlightURL];
  v14 = NSStringFromSelector(sel_highlightURL);
  [v4 encodeObject:v15 forKey:v14];
}

- (SLShareableContentMetadata)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(sel_sceneIdentifier);
  v7 = [v4 decodeObjectOfClass:v5 forKey:v6];

  v8 = objc_opt_class();
  v9 = NSStringFromSelector(sel_bundleIdentifier);
  v10 = [v4 decodeObjectOfClass:v8 forKey:v9];

  v11 = MEMORY[0x277CBEB98];
  v12 = objc_opt_class();
  v13 = [v11 setWithObjects:{v12, objc_opt_class(), 0}];
  v14 = NSStringFromSelector(sel_representations);
  v15 = [v4 decodeObjectOfClasses:v13 forKey:v14];

  v16 = objc_opt_class();
  v17 = NSStringFromSelector(sel_metadata);
  v18 = [v4 decodeObjectOfClass:v16 forKey:v17];

  v19 = [MEMORY[0x277CD46C8] metadataWithDataRepresentation:v18];
  v20 = objc_opt_class();
  v21 = NSStringFromSelector(sel_highlightURL);
  v22 = [v4 decodeObjectOfClass:v20 forKey:v21];

  v23 = [(SLShareableContentMetadata *)self initWithSceneIdentifier:v7 bundleIdentifier:v10 representations:v15 metadata:v19 highlightURL:v22];
  v24 = objc_opt_class();
  v25 = NSStringFromSelector(sel_initiatorHandle);
  v26 = [v4 decodeObjectOfClass:v24 forKey:v25];
  [(SLShareableContentMetadata *)v23 setInitiatorHandle:v26];

  v27 = objc_opt_class();
  v28 = NSStringFromSelector(sel_initiatorNameComponents);
  v29 = [v4 decodeObjectOfClass:v27 forKey:v28];

  [(SLShareableContentMetadata *)v23 setInitiatorNameComponents:v29];
  return v23;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(SLShareableContentMetadata *)self sceneIdentifier];
  v6 = NSStringFromSelector(sel_sceneIdentifier);
  [v4 encodeObject:v5 forKey:v6];

  v7 = [(SLShareableContentMetadata *)self bundleIdentifier];
  v8 = NSStringFromSelector(sel_bundleIdentifier);
  [v4 encodeObject:v7 forKey:v8];

  v9 = [(SLShareableContentMetadata *)self representations];
  v10 = NSStringFromSelector(sel_representations);
  [v4 encodeObject:v9 forKey:v10];

  v11 = [(SLShareableContentMetadata *)self metadata];
  v12 = [v11 dataRepresentation];
  v13 = NSStringFromSelector(sel_metadata);
  [v4 encodeObject:v12 forKey:v13];

  v14 = [(SLShareableContentMetadata *)self highlightURL];
  v15 = NSStringFromSelector(sel_highlightURL);
  [v4 encodeObject:v14 forKey:v15];

  v16 = [(SLShareableContentMetadata *)self initiatorHandle];
  v17 = NSStringFromSelector(sel_initiatorHandle);
  [v4 encodeObject:v16 forKey:v17];

  v19 = [(SLShareableContentMetadata *)self initiatorNameComponents];
  v18 = NSStringFromSelector(sel_initiatorNameComponents);
  [v4 encodeObject:v19 forKey:v18];
}

@end