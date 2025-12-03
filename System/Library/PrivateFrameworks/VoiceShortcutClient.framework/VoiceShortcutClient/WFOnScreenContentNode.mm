@interface WFOnScreenContentNode
- (CGRect)applicationFrame;
- (NSDate)fileCreationDate;
- (NSString)fileTypeIdentifier;
- (WFOnScreenContentNode)init;
- (WFOnScreenContentNode)initWithCoder:(id)coder;
- (WFOnScreenContentNode)initWithContentItem:(id)item file:(id)file applicationBundleIdentifier:(id)identifier applicationFrame:(CGRect)frame applicationLevel:(id)level source:(id)source linkPresentationMetadata:(id)metadata;
- (WFOnScreenContentNode)initWithFile:(id)file applicationBundleIdentifier:(id)identifier source:(id)source;
- (void)addChild:(id)child;
- (void)addChildren:(id)children;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)populateObjectsFromContentItem:(id)item;
- (void)removeChild:(id)child;
@end

@implementation WFOnScreenContentNode

- (CGRect)applicationFrame
{
  x = self->_applicationFrame.origin.x;
  y = self->_applicationFrame.origin.y;
  width = self->_applicationFrame.size.width;
  height = self->_applicationFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  string = [(WFOnScreenContentNode *)self string];
  [coderCopy encodeObject:string forKey:@"string"];

  v6 = [(WFOnScreenContentNode *)self URL];
  [coderCopy encodeObject:v6 forKey:@"URL"];

  file = [(WFOnScreenContentNode *)self file];
  [coderCopy encodeObject:file forKey:@"file"];

  contentItem = [(WFOnScreenContentNode *)self contentItem];
  [coderCopy encodeObject:contentItem forKey:@"contentItem"];

  applicationBundleIdentifier = [(WFOnScreenContentNode *)self applicationBundleIdentifier];
  [coderCopy encodeObject:applicationBundleIdentifier forKey:@"applicationBundleIdentifier"];

  applicationLevel = [(WFOnScreenContentNode *)self applicationLevel];
  [coderCopy encodeObject:applicationLevel forKey:@"applicationLevel"];

  source = [(WFOnScreenContentNode *)self source];
  [coderCopy encodeObject:source forKey:@"source"];

  chatRegistryContinuityKey = [(WFOnScreenContentNode *)self chatRegistryContinuityKey];
  [coderCopy encodeObject:chatRegistryContinuityKey forKey:@"chatRegistryContinuityKey"];

  contactIdentifier = [(WFOnScreenContentNode *)self contactIdentifier];
  [coderCopy encodeObject:contactIdentifier forKey:@"contactIdentifier"];

  photoAssetIdentifier = [(WFOnScreenContentNode *)self photoAssetIdentifier];
  [coderCopy encodeObject:photoAssetIdentifier forKey:@"photoAssetIdentifier"];

  linkPresentationMetadata = [(WFOnScreenContentNode *)self linkPresentationMetadata];
  [coderCopy encodeObject:linkPresentationMetadata forKey:@"linkPresentationMetadata"];

  [(WFOnScreenContentNode *)self applicationFrame];
  v22[0] = v16;
  v22[1] = v17;
  v22[2] = v18;
  v22[3] = v19;
  v20 = [MEMORY[0x1E696B098] valueWithBytes:v22 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
  [coderCopy encodeObject:v20 forKey:@"applicationFrame"];

  children = [(WFOnScreenContentNode *)self children];
  [coderCopy encodeObject:children forKey:@"children"];
}

- (WFOnScreenContentNode)initWithCoder:(id)coder
{
  coderCopy = coder;
  v42.receiver = self;
  v42.super_class = WFOnScreenContentNode;
  v5 = [(WFOnScreenContentNode *)&v42 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"string"];
    v7 = *(v5 + 2);
    *(v5 + 2) = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"URL"];
    v9 = *(v5 + 1);
    *(v5 + 1) = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"file"];
    v11 = *(v5 + 3);
    *(v5 + 3) = v10;

    v12 = MEMORY[0x1E695DFD8];
    sizep = 0;
    p_sizep = &sizep;
    v48 = 0x2050000000;
    v13 = getWFContentItemClass_softClass_13325;
    v49 = getWFContentItemClass_softClass_13325;
    if (!getWFContentItemClass_softClass_13325)
    {
      *&v43 = MEMORY[0x1E69E9820];
      *(&v43 + 1) = 3221225472;
      *&v44 = __getWFContentItemClass_block_invoke_13326;
      *(&v44 + 1) = &unk_1E7B02C60;
      v45 = &sizep;
      __getWFContentItemClass_block_invoke_13326(&v43);
      v13 = p_sizep[3];
    }

    v14 = v13;
    _Block_object_dispose(&sizep, 8);
    v15 = [v12 setWithObjects:{v13, 0}];
    v16 = [coderCopy decodeObjectOfClasses:v15 forKey:@"contentItem"];
    v17 = *(v5 + 11);
    *(v5 + 11) = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"applicationBundleIdentifier"];
    v19 = *(v5 + 8);
    *(v5 + 8) = v18;

    *(v5 + 9) = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"applicationLevel"];
    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"source"];
    v21 = *(v5 + 12);
    *(v5 + 12) = v20;

    v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"chatRegistryContinuityKey"];
    v23 = *(v5 + 5);
    *(v5 + 5) = v22;

    v24 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"contactIdentifier"];
    v25 = *(v5 + 6);
    *(v5 + 6) = v24;

    v26 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"photoAssetIdentifier"];
    v27 = *(v5 + 7);
    *(v5 + 7) = v26;

    sizep = 0;
    p_sizep = &sizep;
    v48 = 0x2050000000;
    v28 = getLPLinkMetadataClass_softClass_13328;
    v49 = getLPLinkMetadataClass_softClass_13328;
    if (!getLPLinkMetadataClass_softClass_13328)
    {
      *&v43 = MEMORY[0x1E69E9820];
      *(&v43 + 1) = 3221225472;
      *&v44 = __getLPLinkMetadataClass_block_invoke_13329;
      *(&v44 + 1) = &unk_1E7B02C60;
      v45 = &sizep;
      __getLPLinkMetadataClass_block_invoke_13329(&v43);
      v28 = p_sizep[3];
    }

    v29 = v28;
    _Block_object_dispose(&sizep, 8);
    v30 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"linkPresentationMetadata"];
    v31 = *(v5 + 10);
    *(v5 + 10) = v30;

    v32 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"applicationFrame"];
    v33 = *(MEMORY[0x1E695F050] + 16);
    v43 = *MEMORY[0x1E695F050];
    v44 = v33;
    sizep = 0;
    NSGetSizeAndAlignment("{CGRect={CGPoint=dd}{CGSize=dd}}", &sizep, 0);
    if (sizep == 32)
    {
      [v32 getValue:&v43];
      v34 = v44;
      *(v5 + 104) = v43;
      *(v5 + 120) = v34;
    }

    v35 = MEMORY[0x1E695DFD8];
    v36 = objc_opt_class();
    v37 = [v35 setWithObjects:{v36, objc_opt_class(), 0}];
    v38 = [coderCopy decodeObjectOfClasses:v37 forKey:@"children"];
    v39 = *(v5 + 4);
    *(v5 + 4) = v38;

    v40 = v5;
  }

  return v5;
}

- (void)populateObjectsFromContentItem:(id)item
{
  itemCopy = item;
  v29 = 0;
  v30 = &v29;
  v31 = 0x2050000000;
  v5 = getWFStringContentItemClass_softClass;
  v32 = getWFStringContentItemClass_softClass;
  if (!getWFStringContentItemClass_softClass)
  {
    v24 = MEMORY[0x1E69E9820];
    v25 = 3221225472;
    v26 = __getWFStringContentItemClass_block_invoke;
    v27 = &unk_1E7B02C60;
    v28 = &v29;
    __getWFStringContentItemClass_block_invoke(&v24);
    v5 = v30[3];
  }

  v6 = v5;
  _Block_object_dispose(&v29, 8);
  if (objc_opt_isKindOfClass())
  {
    string = [itemCopy string];
    string = self->_string;
    self->_string = string;
LABEL_17:

    goto LABEL_18;
  }

  v29 = 0;
  v30 = &v29;
  v31 = 0x2050000000;
  v9 = getWFURLContentItemClass_softClass;
  v32 = getWFURLContentItemClass_softClass;
  if (!getWFURLContentItemClass_softClass)
  {
    v24 = MEMORY[0x1E69E9820];
    v25 = 3221225472;
    v26 = __getWFURLContentItemClass_block_invoke;
    v27 = &unk_1E7B02C60;
    v28 = &v29;
    __getWFURLContentItemClass_block_invoke(&v24);
    v9 = v30[3];
  }

  v10 = v9;
  _Block_object_dispose(&v29, 8);
  if (objc_opt_isKindOfClass())
  {
    v11 = [itemCopy URL];
    string = self->_URL;
    self->_URL = v11;
    goto LABEL_17;
  }

  v29 = 0;
  v30 = &v29;
  v31 = 0x2050000000;
  v12 = getWFContactContentItemClass_softClass;
  v32 = getWFContactContentItemClass_softClass;
  if (!getWFContactContentItemClass_softClass)
  {
    v24 = MEMORY[0x1E69E9820];
    v25 = 3221225472;
    v26 = __getWFContactContentItemClass_block_invoke;
    v27 = &unk_1E7B02C60;
    v28 = &v29;
    __getWFContactContentItemClass_block_invoke(&v24);
    v12 = v30[3];
  }

  v13 = v12;
  _Block_object_dispose(&v29, 8);
  if (objc_opt_isKindOfClass())
  {
    string = itemCopy;
    contact = [string contact];
    v29 = 0;
    v30 = &v29;
    v31 = 0x2050000000;
    v15 = getWFCNContactClass_softClass;
    v32 = getWFCNContactClass_softClass;
    if (!getWFCNContactClass_softClass)
    {
      v24 = MEMORY[0x1E69E9820];
      v25 = 3221225472;
      v26 = __getWFCNContactClass_block_invoke;
      v27 = &unk_1E7B02C60;
      v28 = &v29;
      __getWFCNContactClass_block_invoke(&v24);
      v15 = v30[3];
    }

    v16 = v15;
    _Block_object_dispose(&v29, 8);
    if (objc_opt_isKindOfClass())
    {
      contactIdentifier = [contact contactIdentifier];
      contactIdentifier = self->_contactIdentifier;
      self->_contactIdentifier = contactIdentifier;
    }

    goto LABEL_17;
  }

LABEL_18:
  v29 = 0;
  v30 = &v29;
  v31 = 0x2050000000;
  v19 = getWFPhotoMediaContentItemClass_softClass;
  v32 = getWFPhotoMediaContentItemClass_softClass;
  if (!getWFPhotoMediaContentItemClass_softClass)
  {
    v24 = MEMORY[0x1E69E9820];
    v25 = 3221225472;
    v26 = __getWFPhotoMediaContentItemClass_block_invoke;
    v27 = &unk_1E7B02C60;
    v28 = &v29;
    __getWFPhotoMediaContentItemClass_block_invoke(&v24);
    v19 = v30[3];
  }

  v20 = v19;
  _Block_object_dispose(&v29, 8);
  if (objc_opt_isKindOfClass())
  {
    asset = [itemCopy asset];
    localIdentifier = [asset localIdentifier];
    photoAssetIdentifier = self->_photoAssetIdentifier;
    self->_photoAssetIdentifier = localIdentifier;
  }
}

- (void)addChildren:(id)children
{
  childrenCopy = children;
  if ([childrenCopy count])
  {
    children = [(WFOnScreenContentNode *)self children];
    v5 = [children mutableCopy];

    [(NSArray *)v5 addObjectsFromArray:childrenCopy];
    children = self->_children;
    self->_children = v5;
  }
}

- (void)removeChild:(id)child
{
  if (child)
  {
    childCopy = child;
    children = [(WFOnScreenContentNode *)self children];
    v6 = [children mutableCopy];

    [(NSArray *)v6 removeObject:childCopy];
    children = self->_children;
    self->_children = v6;
  }
}

- (void)addChild:(id)child
{
  if (child)
  {
    childCopy = child;
    children = [(WFOnScreenContentNode *)self children];
    v6 = [children mutableCopy];

    [(NSArray *)v6 addObject:childCopy];
    children = self->_children;
    self->_children = v6;
  }
}

- (NSDate)fileCreationDate
{
  file = [(WFOnScreenContentNode *)self file];

  if (file)
  {
    file2 = [(WFOnScreenContentNode *)self file];
    fileURL = [file2 fileURL];
    v8 = 0;
    [fileURL getResourceValue:&v8 forKey:*MEMORY[0x1E695DAA8] error:0];
    v6 = v8;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (NSString)fileTypeIdentifier
{
  file = [(WFOnScreenContentNode *)self file];
  fileURL = [file fileURL];

  if (fileURL)
  {
    file2 = [(WFOnScreenContentNode *)self file];
    fileURL2 = [file2 fileURL];
    pathExtension = [fileURL2 pathExtension];
    v8 = [WFFileType typeFromFileExtension:pathExtension];

    string = [v8 string];
  }

  else
  {
    string = 0;
  }

  return string;
}

- (void)dealloc
{
  file = [(WFOnScreenContentNode *)self file];
  fileURL = [file fileURL];

  if (fileURL)
  {
    file2 = [(WFOnScreenContentNode *)self file];
    fileURL2 = [file2 fileURL];
    [fileURL2 startAccessingSecurityScopedResource];

    file = self->_file;
    self->_file = 0;

    file3 = [(WFOnScreenContentNode *)self file];
    fileURL3 = [file3 fileURL];
    [fileURL3 stopAccessingSecurityScopedResource];
  }

  v10.receiver = self;
  v10.super_class = WFOnScreenContentNode;
  [(WFOnScreenContentNode *)&v10 dealloc];
}

- (WFOnScreenContentNode)initWithFile:(id)file applicationBundleIdentifier:(id)identifier source:(id)source
{
  fileCopy = file;
  identifierCopy = identifier;
  sourceCopy = source;
  v16.receiver = self;
  v16.super_class = WFOnScreenContentNode;
  v12 = [(WFOnScreenContentNode *)&v16 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_file, file);
    objc_storeStrong(&v13->_applicationBundleIdentifier, identifier);
    objc_storeStrong(&v13->_source, source);
    v14 = v13;
  }

  return v13;
}

- (WFOnScreenContentNode)initWithContentItem:(id)item file:(id)file applicationBundleIdentifier:(id)identifier applicationFrame:(CGRect)frame applicationLevel:(id)level source:(id)source linkPresentationMetadata:(id)metadata
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  itemCopy = item;
  fileCopy = file;
  identifierCopy = identifier;
  levelCopy = level;
  sourceCopy = source;
  metadataCopy = metadata;
  v24 = [(WFOnScreenContentNode *)self init];
  v25 = v24;
  if (v24)
  {
    objc_storeStrong(&v24->_contentItem, item);
    objc_storeStrong(&v25->_file, file);
    objc_storeStrong(&v25->_applicationBundleIdentifier, identifier);
    v25->_applicationFrame.origin.x = x;
    v25->_applicationFrame.origin.y = y;
    v25->_applicationFrame.size.width = width;
    v25->_applicationFrame.size.height = height;
    v25->_applicationLevel = levelCopy;
    objc_storeStrong(&v25->_source, source);
    objc_storeStrong(&v25->_linkPresentationMetadata, metadata);
    [(WFOnScreenContentNode *)v25 populateObjectsFromContentItem:itemCopy, identifierCopy, fileCopy];
    v26 = v25;
  }

  return v25;
}

- (WFOnScreenContentNode)init
{
  v7.receiver = self;
  v7.super_class = WFOnScreenContentNode;
  v2 = [(WFOnScreenContentNode *)&v7 init];
  if (v2)
  {
    v3 = objc_opt_new();
    children = v2->_children;
    v2->_children = v3;

    v5 = v2;
  }

  return v2;
}

@end