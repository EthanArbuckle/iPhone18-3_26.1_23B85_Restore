@interface PREResponseItem
+ (id)responseItemArrayFromResponseKitArray:(id)a3 forLocale:(id)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToResponseItem:(id)a3;
- (PREResponseItem)initWithCategoryId:(id)a3 modelId:(id)a4 responseClassId:(id)a5 replySubgroupId:(id)a6 replyTextId:(id)a7 replyText:(id)a8 language:(id)a9 isCustomResponse:(id)a10 isRobotResponse:(id)a11;
- (PREResponseItem)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
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

- (BOOL)isEqualToResponseItem:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    goto LABEL_32;
  }

  v5 = self->_categoryId;
  v6 = v5;
  if (v5 == v4[1])
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
  if (v8 == v4[2])
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
  if (v11 == v4[3])
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
  if (v14 == v4[4])
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
  if (v17 == v4[5])
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
  if (v20 == v4[6])
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
  if (v23 == v4[7])
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
  if (v26 == v4[8])
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
  if (v31 == v4[9])
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PREResponseItem *)self isEqualToResponseItem:v5];
  }

  return v6;
}

- (PREResponseItem)initWithCoder:(id)a3
{
  v4 = a3;
  v26.receiver = self;
  v26.super_class = PREResponseItem;
  v5 = [(PREResponseItem *)&v26 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"categoryId"];
    categoryId = v5->_categoryId;
    v5->_categoryId = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"modelId"];
    modelId = v5->_modelId;
    v5->_modelId = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"responseClassId"];
    responseClassId = v5->_responseClassId;
    v5->_responseClassId = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"replySubgroupId"];
    replySubgroupId = v5->_replySubgroupId;
    v5->_replySubgroupId = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"replyTextId"];
    replyTextId = v5->_replyTextId;
    v5->_replyTextId = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"replyText"];
    if (!v16)
    {
      v24 = 0;
      goto LABEL_6;
    }

    replyText = v5->_replyText;
    v5->_replyText = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"language"];
    language = v5->_language;
    v5->_language = v18;

    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"isCustomResponse"];
    isCustomResponse = v5->_isCustomResponse;
    v5->_isCustomResponse = v20;

    v22 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"isRobotResponse"];
    isRobotResponse = v5->_isRobotResponse;
    v5->_isRobotResponse = v22;
  }

  v24 = v5;
LABEL_6:

  return v24;
}

- (void)encodeWithCoder:(id)a3
{
  categoryId = self->_categoryId;
  v5 = a3;
  [v5 encodeObject:categoryId forKey:@"categoryId"];
  [v5 encodeObject:self->_modelId forKey:@"modelId"];
  [v5 encodeObject:self->_responseClassId forKey:@"responseClassId"];
  [v5 encodeObject:self->_replySubgroupId forKey:@"replySubgroupId"];
  [v5 encodeObject:self->_replyTextId forKey:@"replyTextId"];
  [v5 encodeObject:self->_replyText forKey:@"replyText"];
  [v5 encodeObject:self->_language forKey:@"language"];
  [v5 encodeObject:self->_isCustomResponse forKey:@"isCustomResponse"];
  [v5 encodeObject:self->_isRobotResponse forKey:@"isRobotResponse"];
}

- (PREResponseItem)initWithCategoryId:(id)a3 modelId:(id)a4 responseClassId:(id)a5 replySubgroupId:(id)a6 replyTextId:(id)a7 replyText:(id)a8 language:(id)a9 isCustomResponse:(id)a10 isRobotResponse:(id)a11
{
  v29 = a3;
  v28 = a4;
  v27 = a5;
  v26 = a6;
  v25 = a7;
  v24 = a8;
  v23 = a9;
  v22 = a10;
  v18 = a11;
  v30.receiver = self;
  v30.super_class = PREResponseItem;
  v19 = [(PREResponseItem *)&v30 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_categoryId, a3);
    objc_storeStrong(&v20->_modelId, a4);
    objc_storeStrong(&v20->_responseClassId, a5);
    objc_storeStrong(&v20->_replySubgroupId, a6);
    objc_storeStrong(&v20->_replyTextId, a7);
    objc_storeStrong(&v20->_replyText, a8);
    objc_storeStrong(&v20->_language, a9);
    objc_storeStrong(&v20->_isCustomResponse, a10);
    objc_storeStrong(&v20->_isRobotResponse, a11);
  }

  return v20;
}

+ (id)responseItemArrayFromResponseKitArray:(id)a3 forLocale:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  if (v6)
  {
    v7 = [MEMORY[0x277D3A248] languageForLocaleIdentifier:v6];
  }

  else
  {
    v7 = 0;
  }

  v8 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v5, "count")}];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v9 = v5;
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