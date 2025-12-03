@interface SLShareableContentMetadata
- (NSString)description;
- (SLShareableContentMetadata)initWithBSXPCCoder:(id)coder;
- (SLShareableContentMetadata)initWithCoder:(id)coder;
- (SLShareableContentMetadata)initWithSceneIdentifier:(id)identifier bundleIdentifier:(id)bundleIdentifier representations:(id)representations metadata:(id)metadata highlightURL:(id)l;
- (void)encodeWithBSXPCCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SLShareableContentMetadata

- (SLShareableContentMetadata)initWithSceneIdentifier:(id)identifier bundleIdentifier:(id)bundleIdentifier representations:(id)representations metadata:(id)metadata highlightURL:(id)l
{
  identifierCopy = identifier;
  bundleIdentifierCopy = bundleIdentifier;
  representationsCopy = representations;
  metadataCopy = metadata;
  lCopy = l;
  v23.receiver = self;
  v23.super_class = SLShareableContentMetadata;
  v18 = [(SLShareableContentMetadata *)&v23 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_sceneIdentifier, identifier);
    objc_storeStrong(&v19->_bundleIdentifier, bundleIdentifier);
    v20 = [representationsCopy copy];
    representations = v19->_representations;
    v19->_representations = v20;

    objc_storeStrong(&v19->_metadata, metadata);
    objc_storeStrong(&v19->_highlightURL, l);
  }

  return v19;
}

- (NSString)description
{
  v3 = [MEMORY[0x277CCAB68] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  sceneIdentifier = [(SLShareableContentMetadata *)self sceneIdentifier];
  [v3 appendFormat:@" sceneIdentifier=%@", sceneIdentifier];

  bundleIdentifier = [(SLShareableContentMetadata *)self bundleIdentifier];
  [v3 appendFormat:@" bundleIdentifier=%@", bundleIdentifier];

  representations = [(SLShareableContentMetadata *)self representations];
  [v3 appendFormat:@" representations=%@", representations];

  highlightURL = [(SLShareableContentMetadata *)self highlightURL];
  [v3 appendFormat:@" highlightURL=%@", highlightURL];

  [v3 appendString:@">"];
  v8 = [v3 copy];

  return v8;
}

- (SLShareableContentMetadata)initWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(sel_sceneIdentifier);
  v7 = [coderCopy decodeObjectOfClass:v5 forKey:v6];

  v8 = objc_opt_class();
  v9 = NSStringFromSelector(sel_bundleIdentifier);
  v10 = [coderCopy decodeObjectOfClass:v8 forKey:v9];

  v11 = objc_opt_class();
  v12 = objc_opt_class();
  v13 = NSStringFromSelector(sel_representations);
  v14 = [coderCopy decodeCollectionOfClass:v11 containingClass:v12 forKey:v13];

  v15 = objc_opt_class();
  v16 = NSStringFromSelector(sel_metadata);
  v17 = [coderCopy decodeObjectOfClass:v15 forKey:v16];

  v18 = [MEMORY[0x277CD46C8] metadataWithDataRepresentation:v17];
  v19 = objc_opt_class();
  v20 = NSStringFromSelector(sel_highlightURL);
  v21 = [coderCopy decodeObjectOfClass:v19 forKey:v20];

  v22 = [(SLShareableContentMetadata *)self initWithSceneIdentifier:v7 bundleIdentifier:v10 representations:v14 metadata:v18 highlightURL:v21];
  return v22;
}

- (void)encodeWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  sceneIdentifier = [(SLShareableContentMetadata *)self sceneIdentifier];
  v6 = NSStringFromSelector(sel_sceneIdentifier);
  [coderCopy encodeObject:sceneIdentifier forKey:v6];

  bundleIdentifier = [(SLShareableContentMetadata *)self bundleIdentifier];
  v8 = NSStringFromSelector(sel_bundleIdentifier);
  [coderCopy encodeObject:bundleIdentifier forKey:v8];

  representations = [(SLShareableContentMetadata *)self representations];
  v10 = NSStringFromSelector(sel_representations);
  [coderCopy encodeCollection:representations forKey:v10];

  metadata = [(SLShareableContentMetadata *)self metadata];
  dataRepresentation = [metadata dataRepresentation];
  v13 = NSStringFromSelector(sel_metadata);
  [coderCopy encodeObject:dataRepresentation forKey:v13];

  highlightURL = [(SLShareableContentMetadata *)self highlightURL];
  v14 = NSStringFromSelector(sel_highlightURL);
  [coderCopy encodeObject:highlightURL forKey:v14];
}

- (SLShareableContentMetadata)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(sel_sceneIdentifier);
  v7 = [coderCopy decodeObjectOfClass:v5 forKey:v6];

  v8 = objc_opt_class();
  v9 = NSStringFromSelector(sel_bundleIdentifier);
  v10 = [coderCopy decodeObjectOfClass:v8 forKey:v9];

  v11 = MEMORY[0x277CBEB98];
  v12 = objc_opt_class();
  v13 = [v11 setWithObjects:{v12, objc_opt_class(), 0}];
  v14 = NSStringFromSelector(sel_representations);
  v15 = [coderCopy decodeObjectOfClasses:v13 forKey:v14];

  v16 = objc_opt_class();
  v17 = NSStringFromSelector(sel_metadata);
  v18 = [coderCopy decodeObjectOfClass:v16 forKey:v17];

  v19 = [MEMORY[0x277CD46C8] metadataWithDataRepresentation:v18];
  v20 = objc_opt_class();
  v21 = NSStringFromSelector(sel_highlightURL);
  v22 = [coderCopy decodeObjectOfClass:v20 forKey:v21];

  v23 = [(SLShareableContentMetadata *)self initWithSceneIdentifier:v7 bundleIdentifier:v10 representations:v15 metadata:v19 highlightURL:v22];
  v24 = objc_opt_class();
  v25 = NSStringFromSelector(sel_initiatorHandle);
  v26 = [coderCopy decodeObjectOfClass:v24 forKey:v25];
  [(SLShareableContentMetadata *)v23 setInitiatorHandle:v26];

  v27 = objc_opt_class();
  v28 = NSStringFromSelector(sel_initiatorNameComponents);
  v29 = [coderCopy decodeObjectOfClass:v27 forKey:v28];

  [(SLShareableContentMetadata *)v23 setInitiatorNameComponents:v29];
  return v23;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  sceneIdentifier = [(SLShareableContentMetadata *)self sceneIdentifier];
  v6 = NSStringFromSelector(sel_sceneIdentifier);
  [coderCopy encodeObject:sceneIdentifier forKey:v6];

  bundleIdentifier = [(SLShareableContentMetadata *)self bundleIdentifier];
  v8 = NSStringFromSelector(sel_bundleIdentifier);
  [coderCopy encodeObject:bundleIdentifier forKey:v8];

  representations = [(SLShareableContentMetadata *)self representations];
  v10 = NSStringFromSelector(sel_representations);
  [coderCopy encodeObject:representations forKey:v10];

  metadata = [(SLShareableContentMetadata *)self metadata];
  dataRepresentation = [metadata dataRepresentation];
  v13 = NSStringFromSelector(sel_metadata);
  [coderCopy encodeObject:dataRepresentation forKey:v13];

  highlightURL = [(SLShareableContentMetadata *)self highlightURL];
  v15 = NSStringFromSelector(sel_highlightURL);
  [coderCopy encodeObject:highlightURL forKey:v15];

  initiatorHandle = [(SLShareableContentMetadata *)self initiatorHandle];
  v17 = NSStringFromSelector(sel_initiatorHandle);
  [coderCopy encodeObject:initiatorHandle forKey:v17];

  initiatorNameComponents = [(SLShareableContentMetadata *)self initiatorNameComponents];
  v18 = NSStringFromSelector(sel_initiatorNameComponents);
  [coderCopy encodeObject:initiatorNameComponents forKey:v18];
}

@end