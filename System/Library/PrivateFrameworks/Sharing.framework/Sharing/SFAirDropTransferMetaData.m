@interface SFAirDropTransferMetaData
- (BOOL)isEqual:(id)a3;
- (SFAirDropTransferMetaData)initWithCoder:(id)a3;
- (SFAirDropTransferMetaData)initWithInformation:(id)a3;
- (SFAirDropTransferMetaData)initWithTransferTypes:(int64_t)a3 canAutoAccept:(BOOL)a4 didAutoAccept:(BOOL)a5 verifiableIdentity:(BOOL)a6 senderIsMe:(BOOL)a7 contactIdentifier:(id)a8 senderBundleID:(id)a9 senderComputerName:(id)a10 senderEmail:(id)a11 senderEmailHash:(id)a12 senderCompositeName:(id)a13 senderFirstName:(id)a14 senderLastName:(id)a15 senderID:(id)a16 senderIcon:(id)a17 smallPreviewImage:(id)a18 previewImage:(id)a19 itemsDescription:(id)a20 itemsDescriptionAdvanced:(id)a21 items:(id)a22 rawFiles:(id)a23;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)setItemsDescription:(id)a3;
- (void)updateUsingCoder:(id)a3;
@end

@implementation SFAirDropTransferMetaData

- (SFAirDropTransferMetaData)initWithInformation:(id)a3
{
  v60 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v58.receiver = self;
  v58.super_class = SFAirDropTransferMetaData;
  v5 = [(SFAirDropTransferMetaData *)&v58 init];
  v6 = v5;
  if (v5)
  {
    [(SFAirDropTransferMetaData *)v5 setTransferTypes:2];
    v7 = [v4 objectForKeyedSubscript:@"VerifiableIdentity"];
    v6->_verifiableIdentity = [v7 BOOLValue];

    v8 = [v4 objectForKeyedSubscript:@"SenderIsMe"];
    v6->_senderIsMe = [v8 BOOLValue];

    v9 = [v4 objectForKeyedSubscript:@"AutoAccept"];
    v50 = v6;
    v6->_canAutoAccept = [v9 BOOLValue];

    v51 = v4;
    v10 = [v4 objectForKeyedSubscript:@"Files"];
    v53 = objc_opt_new();
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    obj = v10;
    v11 = [obj countByEnumeratingWithState:&v54 objects:v59 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v55;
      v14 = *MEMORY[0x1E6963710];
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v55 != v13)
          {
            objc_enumerationMutation(obj);
          }

          v16 = [*(*(&v54 + 1) + 8 * i) mutableCopy];
          v17 = [v16 objectForKeyedSubscript:@"FileType"];
          if (UTTypeIsDynamic(v17))
          {
            v18 = [v16 objectForKeyedSubscript:@"FileName"];
            v19 = [v18 pathExtension];
            PreferredIdentifierForTag = UTTypeCreatePreferredIdentifierForTag(v14, v19, 0);

            [v16 setObject:PreferredIdentifierForTag forKeyedSubscript:@"FileType"];
          }

          [v53 addObject:v16];
        }

        v12 = [obj countByEnumeratingWithState:&v54 objects:v59 count:16];
      }

      while (v12);
    }

    v6 = v50;
    objc_storeStrong(&v50->_rawFiles, v53);
    v4 = v51;
    v21 = [v51 objectForKeyedSubscript:@"ItemsDescription"];
    [(SFAirDropTransferMetaData *)v50 setItemsDescription:v21];

    v22 = [v51 objectForKeyedSubscript:@"SmallFileIcon"];
    smallPreviewImage = v50->_smallPreviewImage;
    v50->_smallPreviewImage = v22;

    v24 = [v51 objectForKeyedSubscript:@"FileIcon"];
    previewImage = v50->_previewImage;
    v50->_previewImage = v24;

    CGImageWithDataOrURL = [v51 objectForKeyedSubscript:@"SenderIcon"];
    v27 = CGImageWithDataOrURL;
    if (CGImageWithDataOrURL)
    {
      CGImageWithDataOrURL = createCGImageWithDataOrURL(CGImageWithDataOrURL);
    }

    senderIcon = v50->_senderIcon;
    v50->_senderIcon = CGImageWithDataOrURL;

    v29 = [v51 objectForKeyedSubscript:@"BundleID"];
    senderBundleID = v50->_senderBundleID;
    v50->_senderBundleID = v29;

    v31 = [v51 objectForKeyedSubscript:@"SenderComputerName"];
    senderComputerName = v50->_senderComputerName;
    v50->_senderComputerName = v31;

    v33 = [v51 objectForKeyedSubscript:@"SenderEmail"];
    senderEmail = v50->_senderEmail;
    v50->_senderEmail = v33;

    v35 = [v51 objectForKeyedSubscript:@"SenderEmailHash"];
    senderEmailHash = v50->_senderEmailHash;
    v50->_senderEmailHash = v35;

    v37 = [v51 objectForKeyedSubscript:@"SenderCompositeName"];
    senderCompositeName = v50->_senderCompositeName;
    v50->_senderCompositeName = v37;

    v39 = [v51 objectForKeyedSubscript:@"SenderFirstName"];
    senderFirstName = v50->_senderFirstName;
    v50->_senderFirstName = v39;

    v41 = [v51 objectForKeyedSubscript:@"SenderLastName"];
    senderLastName = v50->_senderLastName;
    v50->_senderLastName = v41;

    v43 = [v51 objectForKeyedSubscript:@"SenderID"];
    senderID = v50->_senderID;
    v50->_senderID = v43;

    v45 = [v51 objectForKeyedSubscript:@"SenderNode"];

    if (v45)
    {
      v46 = SFNodeCopyContactIdentifier(v45);
      contactIdentifier = v50->_contactIdentifier;
      v50->_contactIdentifier = &v46->isa;
    }
  }

  v48 = *MEMORY[0x1E69E9840];
  return v6;
}

- (SFAirDropTransferMetaData)initWithTransferTypes:(int64_t)a3 canAutoAccept:(BOOL)a4 didAutoAccept:(BOOL)a5 verifiableIdentity:(BOOL)a6 senderIsMe:(BOOL)a7 contactIdentifier:(id)a8 senderBundleID:(id)a9 senderComputerName:(id)a10 senderEmail:(id)a11 senderEmailHash:(id)a12 senderCompositeName:(id)a13 senderFirstName:(id)a14 senderLastName:(id)a15 senderID:(id)a16 senderIcon:(id)a17 smallPreviewImage:(id)a18 previewImage:(id)a19 itemsDescription:(id)a20 itemsDescriptionAdvanced:(id)a21 items:(id)a22 rawFiles:(id)a23
{
  v49 = a8;
  v48 = a9;
  v47 = a10;
  v46 = a11;
  v45 = a12;
  v44 = a13;
  v43 = a14;
  v42 = a15;
  v41 = a16;
  v23 = a17;
  v24 = a18;
  v25 = a19;
  v26 = a20;
  v27 = a21;
  v28 = a22;
  v29 = a23;
  v50.receiver = self;
  v50.super_class = SFAirDropTransferMetaData;
  v30 = [(SFAirDropTransferMetaData *)&v50 init];
  v31 = v30;
  if (v30)
  {
    v30->_transferTypes = a3;
    v30->_canAutoAccept = a4;
    v30->_didAutoAccept = a5;
    v30->_verifiableIdentity = a6;
    v30->_senderIsMe = a7;
    objc_storeStrong(&v30->_contactIdentifier, a8);
    objc_storeStrong(&v31->_senderBundleID, a9);
    objc_storeStrong(&v31->_senderComputerName, a10);
    objc_storeStrong(&v31->_senderEmail, a11);
    objc_storeStrong(&v31->_senderEmailHash, a12);
    objc_storeStrong(&v31->_senderCompositeName, a13);
    objc_storeStrong(&v31->_senderFirstName, a14);
    objc_storeStrong(&v31->_senderLastName, a15);
    objc_storeStrong(&v31->_senderID, a16);
    objc_storeStrong(&v31->_senderIcon, a17);
    objc_storeStrong(&v31->_smallPreviewImage, a18);
    objc_storeStrong(&v31->_previewImage, a19);
    objc_storeStrong(&v31->_itemsDescription, a20);
    objc_storeStrong(&v31->_itemsDescriptionAdvanced, a21);
    objc_storeStrong(&v31->_items, a22);
    objc_storeStrong(&v31->_rawFiles, a23);
    v32 = v31;
  }

  return v31;
}

- (SFAirDropTransferMetaData)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(SFAirDropTransferMetaData *)self init];
  v6 = v5;
  if (v5)
  {
    [(SFAirDropTransferMetaData *)v5 updateUsingCoder:v4];
  }

  return v6;
}

- (void)updateUsingCoder:(id)a3
{
  v81[3] = *MEMORY[0x1E69E9840];
  v4 = a3;
  self->_transferTypes = [v4 decodeInt64ForKey:@"transferTypes"];
  self->_canAutoAccept = [v4 decodeBoolForKey:@"canAutoAccept"];
  self->_didAutoAccept = [v4 decodeBoolForKey:@"didAutoAccept"];
  self->_verifiableIdentity = [v4 decodeBoolForKey:@"verifiableIdentity"];
  self->_senderIsMe = [v4 decodeBoolForKey:@"senderIsMe"];
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"contactIdentifier"];
  contactIdentifier = self->_contactIdentifier;
  self->_contactIdentifier = v5;

  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"senderBundleID"];
  senderBundleID = self->_senderBundleID;
  self->_senderBundleID = v7;

  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"senderComputerName"];
  senderComputerName = self->_senderComputerName;
  self->_senderComputerName = v9;

  v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"senderEmail"];
  senderEmail = self->_senderEmail;
  self->_senderEmail = v11;

  v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"senderEmailHash"];
  senderEmailHash = self->_senderEmailHash;
  self->_senderEmailHash = v13;

  v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"senderCompositeName"];
  senderCompositeName = self->_senderCompositeName;
  self->_senderCompositeName = v15;

  v17 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"senderFirstName"];
  senderFirstName = self->_senderFirstName;
  self->_senderFirstName = v17;

  v19 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"senderLastName"];
  senderLastName = self->_senderLastName;
  self->_senderLastName = v19;

  v21 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"senderID"];
  senderID = self->_senderID;
  self->_senderID = v21;

  v23 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_senderIconData"];
  v24 = v23;
  if (v23)
  {
    CGImageWithData = createCGImageWithData(v23);
    senderIcon = self->_senderIcon;
    self->_senderIcon = CGImageWithData;

    if (!self->_senderIcon)
    {
      v27 = airdrop_log();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        [(SFAirDropTransferMetaData *)v27 updateUsingCoder:v28, v29, v30, v31, v32, v33, v34];
      }
    }
  }

  v35 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_smallPreviewImageData"];

  if (v35)
  {
    v36 = createCGImageWithData(v35);
    smallPreviewImage = self->_smallPreviewImage;
    self->_smallPreviewImage = v36;

    if (!self->_smallPreviewImage)
    {
      v38 = airdrop_log();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        [(SFAirDropTransferMetaData *)v38 updateUsingCoder:v39, v40, v41, v42, v43, v44, v45];
      }
    }
  }

  v46 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_previewImageData"];

  if (v46)
  {
    v47 = createCGImageWithData(v46);
    previewImage = self->_previewImage;
    self->_previewImage = v47;

    if (!self->_previewImage)
    {
      v49 = airdrop_log();
      if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
      {
        [(SFAirDropTransferMetaData *)v49 updateUsingCoder:v50, v51, v52, v53, v54, v55, v56];
      }
    }
  }

  v57 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"itemsDescription"];
  v58 = [v57 copy];
  itemsDescription = self->_itemsDescription;
  self->_itemsDescription = v58;

  v60 = MEMORY[0x1E695DFD8];
  v81[0] = objc_opt_class();
  v81[1] = objc_opt_class();
  v81[2] = objc_opt_class();
  v61 = [MEMORY[0x1E695DEC8] arrayWithObjects:v81 count:3];
  v62 = [v60 setWithArray:v61];
  v63 = [v4 decodeObjectOfClasses:v62 forKey:@"itemsDescriptionAdvanced"];
  itemsDescriptionAdvanced = self->_itemsDescriptionAdvanced;
  self->_itemsDescriptionAdvanced = v63;

  v65 = MEMORY[0x1E695DFD8];
  v80[0] = objc_opt_class();
  v80[1] = objc_opt_class();
  v66 = [MEMORY[0x1E695DEC8] arrayWithObjects:v80 count:2];
  v67 = [v65 setWithArray:v66];
  v68 = [v4 decodeObjectOfClasses:v67 forKey:@"items"];
  items = self->_items;
  self->_items = v68;

  v70 = MEMORY[0x1E695DFD8];
  v76 = objc_opt_class();
  v77 = objc_opt_class();
  v78 = objc_opt_class();
  v79 = objc_opt_class();
  v71 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v76 count:4];
  v72 = [v70 setWithArray:{v71, v76, v77, v78}];
  v73 = [v4 decodeObjectOfClasses:v72 forKey:@"rawFiles"];
  rawFiles = self->_rawFiles;
  self->_rawFiles = v73;

  v75 = *MEMORY[0x1E69E9840];
}

- (void)encodeWithCoder:(id)a3
{
  v10 = a3;
  [v10 encodeInt64:self->_transferTypes forKey:@"transferTypes"];
  [v10 encodeBool:self->_canAutoAccept forKey:@"canAutoAccept"];
  [v10 encodeBool:self->_didAutoAccept forKey:@"didAutoAccept"];
  [v10 encodeBool:self->_verifiableIdentity forKey:@"verifiableIdentity"];
  [v10 encodeBool:self->_senderIsMe forKey:@"senderIsMe"];
  [v10 encodeObject:self->_contactIdentifier forKey:@"contactIdentifier"];
  [v10 encodeObject:self->_senderBundleID forKey:@"senderBundleID"];
  [v10 encodeObject:self->_senderComputerName forKey:@"senderComputerName"];
  [v10 encodeObject:self->_senderEmail forKey:@"senderEmail"];
  [v10 encodeObject:self->_senderEmailHash forKey:@"senderEmailHash"];
  [v10 encodeObject:self->_senderCompositeName forKey:@"senderCompositeName"];
  [v10 encodeObject:self->_senderFirstName forKey:@"senderFirstName"];
  [v10 encodeObject:self->_senderLastName forKey:@"senderLastName"];
  [v10 encodeObject:self->_senderID forKey:@"senderID"];
  senderIcon = self->_senderIcon;
  if (senderIcon)
  {
    v5 = copyImageData(senderIcon, 0);
    [v10 encodeObject:v5 forKey:@"_senderIconData"];
  }

  smallPreviewImage = self->_smallPreviewImage;
  if (smallPreviewImage)
  {
    v7 = copyImageData(smallPreviewImage, 0);
    [v10 encodeObject:v7 forKey:@"_smallPreviewImageData"];
  }

  previewImage = self->_previewImage;
  if (previewImage)
  {
    v9 = copyImageData(previewImage, 0);
    [v10 encodeObject:v9 forKey:@"_previewImageData"];
  }

  [v10 encodeObject:self->_itemsDescription forKey:@"itemsDescription"];
  [v10 encodeObject:self->_itemsDescriptionAdvanced forKey:@"itemsDescriptionAdvanced"];
  [v10 encodeObject:self->_items forKey:@"items"];
  [v10 encodeObject:self->_rawFiles forKey:@"rawFiles"];
}

- (id)description
{
  objc_opt_class();
  v14 = SFAirDropTransferTypesToString(self->_transferTypes);
  NSAppendPrintF();
  v3 = 0;

  self->_verifiableIdentity;
  NSAppendPrintF();
  v4 = v3;

  self->_contactIdentifier;
  NSAppendPrintF();
  v5 = v4;

  self->_senderIsMe;
  NSAppendPrintF();
  v6 = v5;

  self->_canAutoAccept;
  NSAppendPrintF();
  v7 = v6;

  senderComputerName = self->_senderComputerName;
  NSAppendPrintF();
  v8 = v7;

  self->_previewImage;
  NSAppendPrintF();
  v9 = v8;

  self->_smallPreviewImage;
  NSAppendPrintF();
  v10 = v9;

  NSAppendPrintF();
  v11 = v10;

  return v10;
}

- (unint64_t)hash
{
  v3 = [(SFAirDropTransferMetaData *)self transferTypes];
  v4 = [(SFAirDropTransferMetaData *)self contactIdentifier];
  v5 = [v4 hash] ^ v3;
  v6 = [(SFAirDropTransferMetaData *)self senderID];
  v7 = [v6 hash];
  v8 = [(SFAirDropTransferMetaData *)self senderBundleID];
  v9 = v7 ^ [v8 hash];

  return v5 ^ v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v6 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(SFAirDropTransferMetaData *)self hash];
      v6 = v5 == [(SFAirDropTransferMetaData *)v4 hash];
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (void)setItemsDescription:(id)a3
{
  v5 = a3;
  p_itemsDescription = &self->_itemsDescription;
  if (([v5 isEqual:self->_itemsDescription] & 1) == 0)
  {
    v7 = SFStringIsJSON(v5);
    if (v7)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v8 = airdrop_log();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
        {
          [(SFAirDropTransferMetaData *)v7 setItemsDescription:v8];
        }

        objc_storeStrong(&self->_itemsDescriptionAdvanced, v7);
        v9 = [(NSDictionary *)self->_itemsDescriptionAdvanced objectForKeyedSubscript:@"SFAirDropActivitySubjectMain"];
        itemsDescription = self->_itemsDescription;
        self->_itemsDescription = v9;
      }

      else
      {
        itemsDescription = *p_itemsDescription;
        *p_itemsDescription = 0;
      }
    }

    else
    {
      objc_storeStrong(&self->_itemsDescription, a3);
    }
  }
}

- (void)setItemsDescription:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_debug_impl(&dword_1A9662000, a2, OS_LOG_TYPE_DEBUG, "Transfer provided JSON items description: %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end