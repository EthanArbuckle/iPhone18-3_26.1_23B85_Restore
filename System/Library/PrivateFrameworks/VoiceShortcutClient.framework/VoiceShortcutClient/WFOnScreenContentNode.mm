@interface WFOnScreenContentNode
- (CGRect)applicationFrame;
- (NSDate)fileCreationDate;
- (NSString)fileTypeIdentifier;
- (WFOnScreenContentNode)init;
- (WFOnScreenContentNode)initWithCoder:(id)a3;
- (WFOnScreenContentNode)initWithContentItem:(id)a3 file:(id)a4 applicationBundleIdentifier:(id)a5 applicationFrame:(CGRect)a6 applicationLevel:(id)a7 source:(id)a8 linkPresentationMetadata:(id)a9;
- (WFOnScreenContentNode)initWithFile:(id)a3 applicationBundleIdentifier:(id)a4 source:(id)a5;
- (void)addChild:(id)a3;
- (void)addChildren:(id)a3;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)populateObjectsFromContentItem:(id)a3;
- (void)removeChild:(id)a3;
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

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(WFOnScreenContentNode *)self string];
  [v4 encodeObject:v5 forKey:@"string"];

  v6 = [(WFOnScreenContentNode *)self URL];
  [v4 encodeObject:v6 forKey:@"URL"];

  v7 = [(WFOnScreenContentNode *)self file];
  [v4 encodeObject:v7 forKey:@"file"];

  v8 = [(WFOnScreenContentNode *)self contentItem];
  [v4 encodeObject:v8 forKey:@"contentItem"];

  v9 = [(WFOnScreenContentNode *)self applicationBundleIdentifier];
  [v4 encodeObject:v9 forKey:@"applicationBundleIdentifier"];

  v10 = [(WFOnScreenContentNode *)self applicationLevel];
  [v4 encodeObject:v10 forKey:@"applicationLevel"];

  v11 = [(WFOnScreenContentNode *)self source];
  [v4 encodeObject:v11 forKey:@"source"];

  v12 = [(WFOnScreenContentNode *)self chatRegistryContinuityKey];
  [v4 encodeObject:v12 forKey:@"chatRegistryContinuityKey"];

  v13 = [(WFOnScreenContentNode *)self contactIdentifier];
  [v4 encodeObject:v13 forKey:@"contactIdentifier"];

  v14 = [(WFOnScreenContentNode *)self photoAssetIdentifier];
  [v4 encodeObject:v14 forKey:@"photoAssetIdentifier"];

  v15 = [(WFOnScreenContentNode *)self linkPresentationMetadata];
  [v4 encodeObject:v15 forKey:@"linkPresentationMetadata"];

  [(WFOnScreenContentNode *)self applicationFrame];
  v22[0] = v16;
  v22[1] = v17;
  v22[2] = v18;
  v22[3] = v19;
  v20 = [MEMORY[0x1E696B098] valueWithBytes:v22 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
  [v4 encodeObject:v20 forKey:@"applicationFrame"];

  v21 = [(WFOnScreenContentNode *)self children];
  [v4 encodeObject:v21 forKey:@"children"];
}

- (WFOnScreenContentNode)initWithCoder:(id)a3
{
  v4 = a3;
  v42.receiver = self;
  v42.super_class = WFOnScreenContentNode;
  v5 = [(WFOnScreenContentNode *)&v42 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"string"];
    v7 = *(v5 + 2);
    *(v5 + 2) = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"URL"];
    v9 = *(v5 + 1);
    *(v5 + 1) = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"file"];
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
    v16 = [v4 decodeObjectOfClasses:v15 forKey:@"contentItem"];
    v17 = *(v5 + 11);
    *(v5 + 11) = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"applicationBundleIdentifier"];
    v19 = *(v5 + 8);
    *(v5 + 8) = v18;

    *(v5 + 9) = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"applicationLevel"];
    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"source"];
    v21 = *(v5 + 12);
    *(v5 + 12) = v20;

    v22 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"chatRegistryContinuityKey"];
    v23 = *(v5 + 5);
    *(v5 + 5) = v22;

    v24 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"contactIdentifier"];
    v25 = *(v5 + 6);
    *(v5 + 6) = v24;

    v26 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"photoAssetIdentifier"];
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
    v30 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"linkPresentationMetadata"];
    v31 = *(v5 + 10);
    *(v5 + 10) = v30;

    v32 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"applicationFrame"];
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
    v38 = [v4 decodeObjectOfClasses:v37 forKey:@"children"];
    v39 = *(v5 + 4);
    *(v5 + 4) = v38;

    v40 = v5;
  }

  return v5;
}

- (void)populateObjectsFromContentItem:(id)a3
{
  v4 = a3;
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
    v7 = [v4 string];
    string = self->_string;
    self->_string = v7;
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
    v11 = [v4 URL];
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
    string = v4;
    v14 = [string contact];
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
      v17 = [v14 contactIdentifier];
      contactIdentifier = self->_contactIdentifier;
      self->_contactIdentifier = v17;
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
    v21 = [v4 asset];
    v22 = [v21 localIdentifier];
    photoAssetIdentifier = self->_photoAssetIdentifier;
    self->_photoAssetIdentifier = v22;
  }
}

- (void)addChildren:(id)a3
{
  v7 = a3;
  if ([v7 count])
  {
    v4 = [(WFOnScreenContentNode *)self children];
    v5 = [v4 mutableCopy];

    [(NSArray *)v5 addObjectsFromArray:v7];
    children = self->_children;
    self->_children = v5;
  }
}

- (void)removeChild:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [(WFOnScreenContentNode *)self children];
    v6 = [v5 mutableCopy];

    [(NSArray *)v6 removeObject:v4];
    children = self->_children;
    self->_children = v6;
  }
}

- (void)addChild:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [(WFOnScreenContentNode *)self children];
    v6 = [v5 mutableCopy];

    [(NSArray *)v6 addObject:v4];
    children = self->_children;
    self->_children = v6;
  }
}

- (NSDate)fileCreationDate
{
  v3 = [(WFOnScreenContentNode *)self file];

  if (v3)
  {
    v4 = [(WFOnScreenContentNode *)self file];
    v5 = [v4 fileURL];
    v8 = 0;
    [v5 getResourceValue:&v8 forKey:*MEMORY[0x1E695DAA8] error:0];
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
  v3 = [(WFOnScreenContentNode *)self file];
  v4 = [v3 fileURL];

  if (v4)
  {
    v5 = [(WFOnScreenContentNode *)self file];
    v6 = [v5 fileURL];
    v7 = [v6 pathExtension];
    v8 = [WFFileType typeFromFileExtension:v7];

    v9 = [v8 string];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)dealloc
{
  v3 = [(WFOnScreenContentNode *)self file];
  v4 = [v3 fileURL];

  if (v4)
  {
    v5 = [(WFOnScreenContentNode *)self file];
    v6 = [v5 fileURL];
    [v6 startAccessingSecurityScopedResource];

    file = self->_file;
    self->_file = 0;

    v8 = [(WFOnScreenContentNode *)self file];
    v9 = [v8 fileURL];
    [v9 stopAccessingSecurityScopedResource];
  }

  v10.receiver = self;
  v10.super_class = WFOnScreenContentNode;
  [(WFOnScreenContentNode *)&v10 dealloc];
}

- (WFOnScreenContentNode)initWithFile:(id)a3 applicationBundleIdentifier:(id)a4 source:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v16.receiver = self;
  v16.super_class = WFOnScreenContentNode;
  v12 = [(WFOnScreenContentNode *)&v16 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_file, a3);
    objc_storeStrong(&v13->_applicationBundleIdentifier, a4);
    objc_storeStrong(&v13->_source, a5);
    v14 = v13;
  }

  return v13;
}

- (WFOnScreenContentNode)initWithContentItem:(id)a3 file:(id)a4 applicationBundleIdentifier:(id)a5 applicationFrame:(CGRect)a6 applicationLevel:(id)a7 source:(id)a8 linkPresentationMetadata:(id)a9
{
  height = a6.size.height;
  width = a6.size.width;
  y = a6.origin.y;
  x = a6.origin.x;
  v20 = a3;
  v29 = a4;
  v28 = a5;
  v21 = a7;
  v22 = a8;
  v23 = a9;
  v24 = [(WFOnScreenContentNode *)self init];
  v25 = v24;
  if (v24)
  {
    objc_storeStrong(&v24->_contentItem, a3);
    objc_storeStrong(&v25->_file, a4);
    objc_storeStrong(&v25->_applicationBundleIdentifier, a5);
    v25->_applicationFrame.origin.x = x;
    v25->_applicationFrame.origin.y = y;
    v25->_applicationFrame.size.width = width;
    v25->_applicationFrame.size.height = height;
    v25->_applicationLevel = v21;
    objc_storeStrong(&v25->_source, a8);
    objc_storeStrong(&v25->_linkPresentationMetadata, a9);
    [(WFOnScreenContentNode *)v25 populateObjectsFromContentItem:v20, v28, v29];
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