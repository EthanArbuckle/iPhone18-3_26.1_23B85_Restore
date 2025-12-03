@interface SFAirDropTransferMetaData
- (BOOL)isEqual:(id)equal;
- (SFAirDropTransferMetaData)initWithCoder:(id)coder;
- (SFAirDropTransferMetaData)initWithInformation:(id)information;
- (SFAirDropTransferMetaData)initWithTransferTypes:(int64_t)types canAutoAccept:(BOOL)accept didAutoAccept:(BOOL)autoAccept verifiableIdentity:(BOOL)identity senderIsMe:(BOOL)me contactIdentifier:(id)identifier senderBundleID:(id)d senderComputerName:(id)self0 senderEmail:(id)self1 senderEmailHash:(id)self2 senderCompositeName:(id)self3 senderFirstName:(id)self4 senderLastName:(id)self5 senderID:(id)self6 senderIcon:(id)self7 smallPreviewImage:(id)self8 previewImage:(id)self9 itemsDescription:(id)description itemsDescriptionAdvanced:(id)advanced items:(id)items rawFiles:(id)files;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)setItemsDescription:(id)description;
- (void)updateUsingCoder:(id)coder;
@end

@implementation SFAirDropTransferMetaData

- (SFAirDropTransferMetaData)initWithInformation:(id)information
{
  v60 = *MEMORY[0x1E69E9840];
  informationCopy = information;
  v58.receiver = self;
  v58.super_class = SFAirDropTransferMetaData;
  v5 = [(SFAirDropTransferMetaData *)&v58 init];
  v6 = v5;
  if (v5)
  {
    [(SFAirDropTransferMetaData *)v5 setTransferTypes:2];
    v7 = [informationCopy objectForKeyedSubscript:@"VerifiableIdentity"];
    v6->_verifiableIdentity = [v7 BOOLValue];

    v8 = [informationCopy objectForKeyedSubscript:@"SenderIsMe"];
    v6->_senderIsMe = [v8 BOOLValue];

    v9 = [informationCopy objectForKeyedSubscript:@"AutoAccept"];
    v50 = v6;
    v6->_canAutoAccept = [v9 BOOLValue];

    v51 = informationCopy;
    v10 = [informationCopy objectForKeyedSubscript:@"Files"];
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
            pathExtension = [v18 pathExtension];
            PreferredIdentifierForTag = UTTypeCreatePreferredIdentifierForTag(v14, pathExtension, 0);

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
    informationCopy = v51;
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

- (SFAirDropTransferMetaData)initWithTransferTypes:(int64_t)types canAutoAccept:(BOOL)accept didAutoAccept:(BOOL)autoAccept verifiableIdentity:(BOOL)identity senderIsMe:(BOOL)me contactIdentifier:(id)identifier senderBundleID:(id)d senderComputerName:(id)self0 senderEmail:(id)self1 senderEmailHash:(id)self2 senderCompositeName:(id)self3 senderFirstName:(id)self4 senderLastName:(id)self5 senderID:(id)self6 senderIcon:(id)self7 smallPreviewImage:(id)self8 previewImage:(id)self9 itemsDescription:(id)description itemsDescriptionAdvanced:(id)advanced items:(id)items rawFiles:(id)files
{
  identifierCopy = identifier;
  dCopy = d;
  nameCopy = name;
  emailCopy = email;
  hashCopy = hash;
  compositeNameCopy = compositeName;
  firstNameCopy = firstName;
  lastNameCopy = lastName;
  iDCopy = iD;
  iconCopy = icon;
  imageCopy = image;
  previewImageCopy = previewImage;
  descriptionCopy = description;
  advancedCopy = advanced;
  itemsCopy = items;
  filesCopy = files;
  v50.receiver = self;
  v50.super_class = SFAirDropTransferMetaData;
  v30 = [(SFAirDropTransferMetaData *)&v50 init];
  v31 = v30;
  if (v30)
  {
    v30->_transferTypes = types;
    v30->_canAutoAccept = accept;
    v30->_didAutoAccept = autoAccept;
    v30->_verifiableIdentity = identity;
    v30->_senderIsMe = me;
    objc_storeStrong(&v30->_contactIdentifier, identifier);
    objc_storeStrong(&v31->_senderBundleID, d);
    objc_storeStrong(&v31->_senderComputerName, name);
    objc_storeStrong(&v31->_senderEmail, email);
    objc_storeStrong(&v31->_senderEmailHash, hash);
    objc_storeStrong(&v31->_senderCompositeName, compositeName);
    objc_storeStrong(&v31->_senderFirstName, firstName);
    objc_storeStrong(&v31->_senderLastName, lastName);
    objc_storeStrong(&v31->_senderID, iD);
    objc_storeStrong(&v31->_senderIcon, icon);
    objc_storeStrong(&v31->_smallPreviewImage, image);
    objc_storeStrong(&v31->_previewImage, previewImage);
    objc_storeStrong(&v31->_itemsDescription, description);
    objc_storeStrong(&v31->_itemsDescriptionAdvanced, advanced);
    objc_storeStrong(&v31->_items, items);
    objc_storeStrong(&v31->_rawFiles, files);
    v32 = v31;
  }

  return v31;
}

- (SFAirDropTransferMetaData)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(SFAirDropTransferMetaData *)self init];
  v6 = v5;
  if (v5)
  {
    [(SFAirDropTransferMetaData *)v5 updateUsingCoder:coderCopy];
  }

  return v6;
}

- (void)updateUsingCoder:(id)coder
{
  v81[3] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  self->_transferTypes = [coderCopy decodeInt64ForKey:@"transferTypes"];
  self->_canAutoAccept = [coderCopy decodeBoolForKey:@"canAutoAccept"];
  self->_didAutoAccept = [coderCopy decodeBoolForKey:@"didAutoAccept"];
  self->_verifiableIdentity = [coderCopy decodeBoolForKey:@"verifiableIdentity"];
  self->_senderIsMe = [coderCopy decodeBoolForKey:@"senderIsMe"];
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"contactIdentifier"];
  contactIdentifier = self->_contactIdentifier;
  self->_contactIdentifier = v5;

  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"senderBundleID"];
  senderBundleID = self->_senderBundleID;
  self->_senderBundleID = v7;

  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"senderComputerName"];
  senderComputerName = self->_senderComputerName;
  self->_senderComputerName = v9;

  v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"senderEmail"];
  senderEmail = self->_senderEmail;
  self->_senderEmail = v11;

  v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"senderEmailHash"];
  senderEmailHash = self->_senderEmailHash;
  self->_senderEmailHash = v13;

  v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"senderCompositeName"];
  senderCompositeName = self->_senderCompositeName;
  self->_senderCompositeName = v15;

  v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"senderFirstName"];
  senderFirstName = self->_senderFirstName;
  self->_senderFirstName = v17;

  v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"senderLastName"];
  senderLastName = self->_senderLastName;
  self->_senderLastName = v19;

  v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"senderID"];
  senderID = self->_senderID;
  self->_senderID = v21;

  v23 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_senderIconData"];
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

  v35 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_smallPreviewImageData"];

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

  v46 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_previewImageData"];

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

  v57 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"itemsDescription"];
  v58 = [v57 copy];
  itemsDescription = self->_itemsDescription;
  self->_itemsDescription = v58;

  v60 = MEMORY[0x1E695DFD8];
  v81[0] = objc_opt_class();
  v81[1] = objc_opt_class();
  v81[2] = objc_opt_class();
  v61 = [MEMORY[0x1E695DEC8] arrayWithObjects:v81 count:3];
  v62 = [v60 setWithArray:v61];
  v63 = [coderCopy decodeObjectOfClasses:v62 forKey:@"itemsDescriptionAdvanced"];
  itemsDescriptionAdvanced = self->_itemsDescriptionAdvanced;
  self->_itemsDescriptionAdvanced = v63;

  v65 = MEMORY[0x1E695DFD8];
  v80[0] = objc_opt_class();
  v80[1] = objc_opt_class();
  v66 = [MEMORY[0x1E695DEC8] arrayWithObjects:v80 count:2];
  v67 = [v65 setWithArray:v66];
  v68 = [coderCopy decodeObjectOfClasses:v67 forKey:@"items"];
  items = self->_items;
  self->_items = v68;

  v70 = MEMORY[0x1E695DFD8];
  v76 = objc_opt_class();
  v77 = objc_opt_class();
  v78 = objc_opt_class();
  v79 = objc_opt_class();
  v71 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v76 count:4];
  v72 = [v70 setWithArray:{v71, v76, v77, v78}];
  v73 = [coderCopy decodeObjectOfClasses:v72 forKey:@"rawFiles"];
  rawFiles = self->_rawFiles;
  self->_rawFiles = v73;

  v75 = *MEMORY[0x1E69E9840];
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInt64:self->_transferTypes forKey:@"transferTypes"];
  [coderCopy encodeBool:self->_canAutoAccept forKey:@"canAutoAccept"];
  [coderCopy encodeBool:self->_didAutoAccept forKey:@"didAutoAccept"];
  [coderCopy encodeBool:self->_verifiableIdentity forKey:@"verifiableIdentity"];
  [coderCopy encodeBool:self->_senderIsMe forKey:@"senderIsMe"];
  [coderCopy encodeObject:self->_contactIdentifier forKey:@"contactIdentifier"];
  [coderCopy encodeObject:self->_senderBundleID forKey:@"senderBundleID"];
  [coderCopy encodeObject:self->_senderComputerName forKey:@"senderComputerName"];
  [coderCopy encodeObject:self->_senderEmail forKey:@"senderEmail"];
  [coderCopy encodeObject:self->_senderEmailHash forKey:@"senderEmailHash"];
  [coderCopy encodeObject:self->_senderCompositeName forKey:@"senderCompositeName"];
  [coderCopy encodeObject:self->_senderFirstName forKey:@"senderFirstName"];
  [coderCopy encodeObject:self->_senderLastName forKey:@"senderLastName"];
  [coderCopy encodeObject:self->_senderID forKey:@"senderID"];
  senderIcon = self->_senderIcon;
  if (senderIcon)
  {
    v5 = copyImageData(senderIcon, 0);
    [coderCopy encodeObject:v5 forKey:@"_senderIconData"];
  }

  smallPreviewImage = self->_smallPreviewImage;
  if (smallPreviewImage)
  {
    v7 = copyImageData(smallPreviewImage, 0);
    [coderCopy encodeObject:v7 forKey:@"_smallPreviewImageData"];
  }

  previewImage = self->_previewImage;
  if (previewImage)
  {
    v9 = copyImageData(previewImage, 0);
    [coderCopy encodeObject:v9 forKey:@"_previewImageData"];
  }

  [coderCopy encodeObject:self->_itemsDescription forKey:@"itemsDescription"];
  [coderCopy encodeObject:self->_itemsDescriptionAdvanced forKey:@"itemsDescriptionAdvanced"];
  [coderCopy encodeObject:self->_items forKey:@"items"];
  [coderCopy encodeObject:self->_rawFiles forKey:@"rawFiles"];
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
  transferTypes = [(SFAirDropTransferMetaData *)self transferTypes];
  contactIdentifier = [(SFAirDropTransferMetaData *)self contactIdentifier];
  v5 = [contactIdentifier hash] ^ transferTypes;
  senderID = [(SFAirDropTransferMetaData *)self senderID];
  v7 = [senderID hash];
  senderBundleID = [(SFAirDropTransferMetaData *)self senderBundleID];
  v9 = v7 ^ [senderBundleID hash];

  return v5 ^ v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v6 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(SFAirDropTransferMetaData *)self hash];
      v6 = v5 == [(SFAirDropTransferMetaData *)equalCopy hash];
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (void)setItemsDescription:(id)description
{
  descriptionCopy = description;
  p_itemsDescription = &self->_itemsDescription;
  if (([descriptionCopy isEqual:self->_itemsDescription] & 1) == 0)
  {
    v7 = SFStringIsJSON(descriptionCopy);
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
      objc_storeStrong(&self->_itemsDescription, description);
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