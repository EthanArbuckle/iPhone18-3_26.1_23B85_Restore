@interface PREResponseItem
+ (id)responseItemArrayFromResponseKitArray:(id)array forLocale:(id)locale;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToResponseItem:(id)item;
- (PREResponseItem)initWithCategoryId:(id)id modelId:(id)modelId responseClassId:(id)classId replySubgroupId:(id)subgroupId replyTextId:(id)textId replyText:(id)text language:(id)language isCustomResponse:(id)self0 isRobotResponse:(id)self1;
- (PREResponseItem)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PREResponseItem

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  v4 = *&self->_categoryId;
  v5 = *&self->_replyTextId;
  v6 = [v3 initWithFormat:@"categoryId: %@, modelId: %@, responseClassId: %@, replySubgroupId: %@, replyTextId: %@, replyText: %@, language: %@, isCustomResponse: %@, isRobotResponse %@", self->_categoryId, self->_modelId, self->_responseClassId, self->_replySubgroupId, self->_replyTextId, self->_replyText, self->_language, self->_isCustomResponse, self->_isRobotResponse];

  return v6;
}

- (BOOL)isEqualToResponseItem:(id)item
{
  itemCopy = item;
  if (!itemCopy)
  {
    goto LABEL_32;
  }

  v5 = self->_categoryId;
  v6 = v5;
  if (v5 == itemCopy[1])
  {
  }

  else
  {
    v7 = [(NSNumber *)v5 isEqual:?];

    if ((v7 & 1) == 0)
    {
      goto LABEL_32;
    }
  }

  v8 = self->_modelId;
  v9 = v8;
  if (v8 == itemCopy[2])
  {
  }

  else
  {
    v10 = [(NSNumber *)v8 isEqual:?];

    if ((v10 & 1) == 0)
    {
      goto LABEL_32;
    }
  }

  v11 = self->_responseClassId;
  v12 = v11;
  if (v11 == itemCopy[3])
  {
  }

  else
  {
    v13 = [(NSNumber *)v11 isEqual:?];

    if ((v13 & 1) == 0)
    {
      goto LABEL_32;
    }
  }

  v14 = self->_replySubgroupId;
  v15 = v14;
  if (v14 == itemCopy[4])
  {
  }

  else
  {
    v16 = [(NSNumber *)v14 isEqual:?];

    if ((v16 & 1) == 0)
    {
      goto LABEL_32;
    }
  }

  v17 = self->_replyTextId;
  v18 = v17;
  if (v17 == itemCopy[5])
  {
  }

  else
  {
    v19 = [(NSNumber *)v17 isEqual:?];

    if ((v19 & 1) == 0)
    {
      goto LABEL_32;
    }
  }

  v20 = self->_replyText;
  v21 = v20;
  if (v20 == itemCopy[6])
  {
  }

  else
  {
    v22 = [(NSString *)v20 isEqual:?];

    if ((v22 & 1) == 0)
    {
      goto LABEL_32;
    }
  }

  v23 = self->_language;
  v24 = v23;
  if (v23 == itemCopy[7])
  {
  }

  else
  {
    v25 = [(NSString *)v23 isEqual:?];

    if ((v25 & 1) == 0)
    {
      goto LABEL_32;
    }
  }

  v26 = self->_isCustomResponse;
  v27 = v26;
  if (v26 == itemCopy[8])
  {
  }

  else
  {
    v28 = [(NSNumber *)v26 isEqual:?];

    if ((v28 & 1) == 0)
    {
LABEL_32:
      v29 = 0;
      goto LABEL_33;
    }
  }

  v31 = self->_isRobotResponse;
  v32 = v31;
  if (v31 == itemCopy[9])
  {
    v29 = 1;
  }

  else
  {
    v29 = [(NSNumber *)v31 isEqual:?];
  }

LABEL_33:
  return v29;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PREResponseItem *)self isEqualToResponseItem:v5];
  }

  return v6;
}

- (PREResponseItem)initWithCoder:(id)coder
{
  coderCopy = coder;
  v26.receiver = self;
  v26.super_class = PREResponseItem;
  v5 = [(PREResponseItem *)&v26 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"categoryId"];
    categoryId = v5->_categoryId;
    v5->_categoryId = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"modelId"];
    modelId = v5->_modelId;
    v5->_modelId = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"responseClassId"];
    responseClassId = v5->_responseClassId;
    v5->_responseClassId = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"replySubgroupId"];
    replySubgroupId = v5->_replySubgroupId;
    v5->_replySubgroupId = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"replyTextId"];
    replyTextId = v5->_replyTextId;
    v5->_replyTextId = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"replyText"];
    if (!v16)
    {
      v24 = 0;
      goto LABEL_6;
    }

    replyText = v5->_replyText;
    v5->_replyText = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"language"];
    language = v5->_language;
    v5->_language = v18;

    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"isCustomResponse"];
    isCustomResponse = v5->_isCustomResponse;
    v5->_isCustomResponse = v20;

    v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"isRobotResponse"];
    isRobotResponse = v5->_isRobotResponse;
    v5->_isRobotResponse = v22;
  }

  v24 = v5;
LABEL_6:

  return v24;
}

- (void)encodeWithCoder:(id)coder
{
  categoryId = self->_categoryId;
  coderCopy = coder;
  [coderCopy encodeObject:categoryId forKey:@"categoryId"];
  [coderCopy encodeObject:self->_modelId forKey:@"modelId"];
  [coderCopy encodeObject:self->_responseClassId forKey:@"responseClassId"];
  [coderCopy encodeObject:self->_replySubgroupId forKey:@"replySubgroupId"];
  [coderCopy encodeObject:self->_replyTextId forKey:@"replyTextId"];
  [coderCopy encodeObject:self->_replyText forKey:@"replyText"];
  [coderCopy encodeObject:self->_language forKey:@"language"];
  [coderCopy encodeObject:self->_isCustomResponse forKey:@"isCustomResponse"];
  [coderCopy encodeObject:self->_isRobotResponse forKey:@"isRobotResponse"];
}

- (PREResponseItem)initWithCategoryId:(id)id modelId:(id)modelId responseClassId:(id)classId replySubgroupId:(id)subgroupId replyTextId:(id)textId replyText:(id)text language:(id)language isCustomResponse:(id)self0 isRobotResponse:(id)self1
{
  idCopy = id;
  modelIdCopy = modelId;
  classIdCopy = classId;
  subgroupIdCopy = subgroupId;
  textIdCopy = textId;
  textCopy = text;
  languageCopy = language;
  responseCopy = response;
  robotResponseCopy = robotResponse;
  v30.receiver = self;
  v30.super_class = PREResponseItem;
  v19 = [(PREResponseItem *)&v30 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_categoryId, id);
    objc_storeStrong(&v20->_modelId, modelId);
    objc_storeStrong(&v20->_responseClassId, classId);
    objc_storeStrong(&v20->_replySubgroupId, subgroupId);
    objc_storeStrong(&v20->_replyTextId, textId);
    objc_storeStrong(&v20->_replyText, text);
    objc_storeStrong(&v20->_language, language);
    objc_storeStrong(&v20->_isCustomResponse, response);
    objc_storeStrong(&v20->_isRobotResponse, robotResponse);
  }

  return v20;
}

+ (id)responseItemArrayFromResponseKitArray:(id)array forLocale:(id)locale
{
  v23 = *MEMORY[0x277D85DE8];
  arrayCopy = array;
  localeCopy = locale;
  if (localeCopy)
  {
    v7 = [MEMORY[0x277D3A248] languageForLocaleIdentifier:localeCopy];
  }

  else
  {
    v7 = 0;
  }

  v8 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(arrayCopy, "count")}];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v9 = arrayCopy;
  v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v19;
    v13 = MEMORY[0x277CBEC28];
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v15 = [[PREResponseItem alloc] initWithCategoryId:0 modelId:0 responseClassId:0 replySubgroupId:0 replyTextId:0 replyText:*(*(&v18 + 1) + 8 * i) language:v7 isCustomResponse:v13 isRobotResponse:v13];
        [v8 addObject:v15];
      }

      v11 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v11);
  }

  v16 = *MEMORY[0x277D85DE8];

  return v8;
}

@end