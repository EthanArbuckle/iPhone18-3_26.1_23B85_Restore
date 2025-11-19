@interface VIRegionOfInterestResultItem
- (BOOL)isEqual:(id)a3;
- (CSUSearchableKnowledgeObject)searchableKnowledgeObject;
- (VIObjectCategory)objectCategory;
- (VIRegionOfInterestResultItem)initWithDomain:(id)a3 caption:(id)a4 thirdPartyObject:(id)a5 ontologyNode:(id)a6 objectKnowledge:(id)a7;
- (VIRegionOfInterestResultItem)initWithDomain:(id)a3 thirdPartyObject:(id)a4 ontologyNode:(id)a5 objectKnowledge:(id)a6;
- (signed)csuSearchableKnowledgeObjectIdType;
- (unint64_t)hash;
@end

@implementation VIRegionOfInterestResultItem

- (VIRegionOfInterestResultItem)initWithDomain:(id)a3 thirdPartyObject:(id)a4 ontologyNode:(id)a5 objectKnowledge:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v25.receiver = self;
  v25.super_class = VIRegionOfInterestResultItem;
  v15 = [(VIRegionOfInterestResultItem *)&v25 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_domain, a3);
    caption = v16->_caption;
    v16->_caption = &stru_1F553A170;

    v18 = [v12 copy];
    thirdPartyObject = v16->_thirdPartyObject;
    v16->_thirdPartyObject = v18;

    v20 = [v13 copy];
    ontologyNode = v16->_ontologyNode;
    v16->_ontologyNode = v20;

    v22 = [v14 copy];
    objectKnowledge = v16->_objectKnowledge;
    v16->_objectKnowledge = v22;
  }

  return v16;
}

- (VIRegionOfInterestResultItem)initWithDomain:(id)a3 caption:(id)a4 thirdPartyObject:(id)a5 ontologyNode:(id)a6 objectKnowledge:(id)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v27.receiver = self;
  v27.super_class = VIRegionOfInterestResultItem;
  v18 = [(VIRegionOfInterestResultItem *)&v27 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_domain, a3);
    objc_storeStrong(&v19->_caption, a4);
    v20 = [v15 copy];
    thirdPartyObject = v19->_thirdPartyObject;
    v19->_thirdPartyObject = v20;

    v22 = [v16 copy];
    ontologyNode = v19->_ontologyNode;
    v19->_ontologyNode = v22;

    v24 = [v17 copy];
    objectKnowledge = v19->_objectKnowledge;
    v19->_objectKnowledge = v24;
  }

  return v19;
}

- (VIObjectCategory)objectCategory
{
  v3 = [VIObjectCategory alloc];
  v4 = [(VIOntologyNode *)self->_ontologyNode knowledgeGraphID];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = &stru_1F553A170;
  }

  v7 = [(VIOntologyNode *)self->_ontologyNode labelDebugDescription];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = &stru_1F553A170;
  }

  v10 = [(VIObjectCategory *)v3 initWithKnowledgeGraphID:v6 labelDebugDescription:v9];

  return v10;
}

- (signed)csuSearchableKnowledgeObjectIdType
{
  result = [(VIObjectKnowledge *)self->_objectKnowledge csuIdType];
  if (((result - 1) & 0xFFFC) != 0)
  {
    return 0;
  }

  return result;
}

- (CSUSearchableKnowledgeObject)searchableKnowledgeObject
{
  v3 = objc_alloc(MEMORY[0x1E6999140]);
  v4 = [(VIObjectKnowledge *)self->_objectKnowledge csuQid];
  v5 = [(VIRegionOfInterestResultItem *)self csuSearchableKnowledgeObjectIdType];
  v6 = [(VIObjectKnowledge *)self->_objectKnowledge csuLocalizedLabelDictionary];
  [(VIObjectKnowledge *)self->_objectKnowledge csuConfidence];
  v8 = v7;
  v9 = [(VIObjectKnowledge *)self->_objectKnowledge csuSensitiveLocation];
  v10 = [(VIObjectKnowledge *)self->_objectKnowledge csuCategory];
  v11 = [(VIObjectKnowledge *)self->_objectKnowledge csuVertical];
  v12 = [(VIObjectKnowledge *)self->_objectKnowledge csuLocalizedSynonymsDictionary];
  [(VIObjectKnowledge *)self->_objectKnowledge csuLongitute];
  v14 = v13;
  [(VIObjectKnowledge *)self->_objectKnowledge csuLatitute];
  v16 = v15;
  LODWORD(v19) = [(VIObjectKnowledge *)self->_objectKnowledge csuVersion];
  v17 = [v3 initWithQID:v4 idType:v5 localizedLabelDictionary:v6 confidence:v9 sensitiveLocation:v10 category:v11 vertical:v8 localizedSynonymsDictionary:v14 longitude:v16 latitude:v12 version:v19];

  return v17;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    IsEqual = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;
    domain = self->_domain;
    v8 = [(VIRegionOfInterestResultItem *)v6 domain];
    if (VIObjectIsEqual(domain, v8))
    {
      thirdPartyObject = self->_thirdPartyObject;
      v10 = [(VIRegionOfInterestResultItem *)v6 thirdPartyObject];
      if (VIObjectIsEqual(thirdPartyObject, v10))
      {
        ontologyNode = self->_ontologyNode;
        v12 = [(VIRegionOfInterestResultItem *)v6 ontologyNode];
        if (VIObjectIsEqual(ontologyNode, v12))
        {
          objectKnowledge = self->_objectKnowledge;
          v14 = [(VIRegionOfInterestResultItem *)v6 objectKnowledge];
          IsEqual = VIObjectIsEqual(objectKnowledge, v14);
        }

        else
        {
          IsEqual = 0;
        }
      }

      else
      {
        IsEqual = 0;
      }
    }

    else
    {
      IsEqual = 0;
    }
  }

  return IsEqual;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_domain hash];
  v4 = [(VIThirdPartyObject *)self->_thirdPartyObject hash]^ v3;
  v5 = [(VIOntologyNode *)self->_ontologyNode hash];
  return v4 ^ v5 ^ [(VIObjectKnowledge *)self->_objectKnowledge hash];
}

@end