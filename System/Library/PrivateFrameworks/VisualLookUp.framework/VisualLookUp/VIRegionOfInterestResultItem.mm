@interface VIRegionOfInterestResultItem
- (BOOL)isEqual:(id)equal;
- (CSUSearchableKnowledgeObject)searchableKnowledgeObject;
- (VIObjectCategory)objectCategory;
- (VIRegionOfInterestResultItem)initWithDomain:(id)domain caption:(id)caption thirdPartyObject:(id)object ontologyNode:(id)node objectKnowledge:(id)knowledge;
- (VIRegionOfInterestResultItem)initWithDomain:(id)domain thirdPartyObject:(id)object ontologyNode:(id)node objectKnowledge:(id)knowledge;
- (signed)csuSearchableKnowledgeObjectIdType;
- (unint64_t)hash;
@end

@implementation VIRegionOfInterestResultItem

- (VIRegionOfInterestResultItem)initWithDomain:(id)domain thirdPartyObject:(id)object ontologyNode:(id)node objectKnowledge:(id)knowledge
{
  domainCopy = domain;
  objectCopy = object;
  nodeCopy = node;
  knowledgeCopy = knowledge;
  v25.receiver = self;
  v25.super_class = VIRegionOfInterestResultItem;
  v15 = [(VIRegionOfInterestResultItem *)&v25 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_domain, domain);
    caption = v16->_caption;
    v16->_caption = &stru_1F553A170;

    v18 = [objectCopy copy];
    thirdPartyObject = v16->_thirdPartyObject;
    v16->_thirdPartyObject = v18;

    v20 = [nodeCopy copy];
    ontologyNode = v16->_ontologyNode;
    v16->_ontologyNode = v20;

    v22 = [knowledgeCopy copy];
    objectKnowledge = v16->_objectKnowledge;
    v16->_objectKnowledge = v22;
  }

  return v16;
}

- (VIRegionOfInterestResultItem)initWithDomain:(id)domain caption:(id)caption thirdPartyObject:(id)object ontologyNode:(id)node objectKnowledge:(id)knowledge
{
  domainCopy = domain;
  captionCopy = caption;
  objectCopy = object;
  nodeCopy = node;
  knowledgeCopy = knowledge;
  v27.receiver = self;
  v27.super_class = VIRegionOfInterestResultItem;
  v18 = [(VIRegionOfInterestResultItem *)&v27 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_domain, domain);
    objc_storeStrong(&v19->_caption, caption);
    v20 = [objectCopy copy];
    thirdPartyObject = v19->_thirdPartyObject;
    v19->_thirdPartyObject = v20;

    v22 = [nodeCopy copy];
    ontologyNode = v19->_ontologyNode;
    v19->_ontologyNode = v22;

    v24 = [knowledgeCopy copy];
    objectKnowledge = v19->_objectKnowledge;
    v19->_objectKnowledge = v24;
  }

  return v19;
}

- (VIObjectCategory)objectCategory
{
  v3 = [VIObjectCategory alloc];
  knowledgeGraphID = [(VIOntologyNode *)self->_ontologyNode knowledgeGraphID];
  v5 = knowledgeGraphID;
  if (knowledgeGraphID)
  {
    v6 = knowledgeGraphID;
  }

  else
  {
    v6 = &stru_1F553A170;
  }

  labelDebugDescription = [(VIOntologyNode *)self->_ontologyNode labelDebugDescription];
  v8 = labelDebugDescription;
  if (labelDebugDescription)
  {
    v9 = labelDebugDescription;
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
  csuQid = [(VIObjectKnowledge *)self->_objectKnowledge csuQid];
  csuSearchableKnowledgeObjectIdType = [(VIRegionOfInterestResultItem *)self csuSearchableKnowledgeObjectIdType];
  csuLocalizedLabelDictionary = [(VIObjectKnowledge *)self->_objectKnowledge csuLocalizedLabelDictionary];
  [(VIObjectKnowledge *)self->_objectKnowledge csuConfidence];
  v8 = v7;
  csuSensitiveLocation = [(VIObjectKnowledge *)self->_objectKnowledge csuSensitiveLocation];
  csuCategory = [(VIObjectKnowledge *)self->_objectKnowledge csuCategory];
  csuVertical = [(VIObjectKnowledge *)self->_objectKnowledge csuVertical];
  csuLocalizedSynonymsDictionary = [(VIObjectKnowledge *)self->_objectKnowledge csuLocalizedSynonymsDictionary];
  [(VIObjectKnowledge *)self->_objectKnowledge csuLongitute];
  v14 = v13;
  [(VIObjectKnowledge *)self->_objectKnowledge csuLatitute];
  v16 = v15;
  LODWORD(v19) = [(VIObjectKnowledge *)self->_objectKnowledge csuVersion];
  v17 = [v3 initWithQID:csuQid idType:csuSearchableKnowledgeObjectIdType localizedLabelDictionary:csuLocalizedLabelDictionary confidence:csuSensitiveLocation sensitiveLocation:csuCategory category:csuVertical vertical:v8 localizedSynonymsDictionary:v14 longitude:v16 latitude:csuLocalizedSynonymsDictionary version:v19];

  return v17;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    IsEqual = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;
    domain = self->_domain;
    domain = [(VIRegionOfInterestResultItem *)v6 domain];
    if (VIObjectIsEqual(domain, domain))
    {
      thirdPartyObject = self->_thirdPartyObject;
      thirdPartyObject = [(VIRegionOfInterestResultItem *)v6 thirdPartyObject];
      if (VIObjectIsEqual(thirdPartyObject, thirdPartyObject))
      {
        ontologyNode = self->_ontologyNode;
        ontologyNode = [(VIRegionOfInterestResultItem *)v6 ontologyNode];
        if (VIObjectIsEqual(ontologyNode, ontologyNode))
        {
          objectKnowledge = self->_objectKnowledge;
          objectKnowledge = [(VIRegionOfInterestResultItem *)v6 objectKnowledge];
          IsEqual = VIObjectIsEqual(objectKnowledge, objectKnowledge);
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