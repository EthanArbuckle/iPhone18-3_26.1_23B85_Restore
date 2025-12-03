@interface KNBuildAttributeTuple
+ (id)tupleForBuild:(id)build property:(id)property value:(id)value;
+ (id)tupleWithChunk:(id)chunk property:(id)property value:(id)value;
+ (id)tupleWithChunk:(id)chunk referent:(unint64_t)referent;
- (BOOL)isValidForSlide:(id)slide;
- (KNBuild)build;
- (KNBuildAttributeTuple)initWithBuild:(id)build chunk:(id)chunk property:(id)property value:(id)value;
- (KNBuildChunk)chunk;
- (id)description;
@end

@implementation KNBuildAttributeTuple

+ (id)tupleWithChunk:(id)chunk property:(id)property value:(id)value
{
  valueCopy = value;
  propertyCopy = property;
  chunkCopy = chunk;
  v11 = [self alloc];
  v13 = objc_msgSend_initWithChunk_property_value_(v11, v12, chunkCopy, propertyCopy, valueCopy);

  return v13;
}

+ (id)tupleForBuild:(id)build property:(id)property value:(id)value
{
  valueCopy = value;
  propertyCopy = property;
  buildCopy = build;
  v11 = [self alloc];
  v13 = objc_msgSend_initWithBuild_property_value_(v11, v12, buildCopy, propertyCopy, valueCopy);

  return v13;
}

+ (id)tupleWithChunk:(id)chunk referent:(unint64_t)referent
{
  chunkCopy = chunk;
  v7 = [self alloc];
  v9 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v8, referent);
  v11 = objc_msgSend_initWithChunk_property_value_(v7, v10, chunkCopy, @"KNBuildChunkReferentProperty", v9);

  return v11;
}

- (KNBuildAttributeTuple)initWithBuild:(id)build chunk:(id)chunk property:(id)property value:(id)value
{
  buildCopy = build;
  chunkCopy = chunk;
  propertyCopy = property;
  valueCopy = value;
  if (chunkCopy)
  {
    objc_msgSend_context(chunkCopy, v13, v14);
  }

  else
  {
    objc_msgSend_context(buildCopy, v13, v14);
  }
  v16 = ;
  if (!v16)
  {
    sub_275E6082C();
  }

  v71.receiver = self;
  v71.super_class = KNBuildAttributeTuple;
  v19 = [(KNBuildAttributeTuple *)&v71 initWithContext:v16];
  if (v19)
  {
    if (!propertyCopy)
    {
      v20 = MEMORY[0x277D81150];
      v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "[KNBuildAttributeTuple initWithBuild:chunk:property:value:]");
      v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNBuildAttributeTuple.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v20, v24, v21, v23, 45, 0, "Invalid parameter not satisfying: %{public}s", "property != nil");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v25, v26);
    }

    v27 = objc_msgSend_copy(propertyCopy, v17, v18);
    property = v19->_property;
    v19->_property = v27;

    if (buildCopy)
    {
      if (chunkCopy)
      {
        v31 = MEMORY[0x277D81150];
        v32 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v29, "[KNBuildAttributeTuple initWithBuild:chunk:property:value:]");
        v34 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v33, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNBuildAttributeTuple.m");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v31, v35, v32, v34, 50, 0, "expected nil value for '%{public}s'", "chunk");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v36, v37);
      }

      v39 = objc_msgSend_objectUUID(buildCopy, v29, v30);
      if (!v39)
      {
        v40 = MEMORY[0x277D81150];
        v41 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v38, "[KNBuildAttributeTuple initWithBuild:chunk:property:value:]");
        v43 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v42, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNBuildAttributeTuple.m");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v40, v44, v41, v43, 53, 0, "invalid nil value for '%{public}s'", "buildId");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v45, v46);
      }

      buildId = v19->_buildId;
      v19->_buildId = v39;

      v19->_definedBuildId = 1;
      if (!chunkCopy)
      {
LABEL_19:
        if (!valueCopy)
        {
          goto LABEL_24;
        }

        goto LABEL_20;
      }
    }

    else if (!chunkCopy)
    {
      v63 = MEMORY[0x277D81150];
      v64 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v29, "[KNBuildAttributeTuple initWithBuild:chunk:property:value:]");
      v66 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v65, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNBuildAttributeTuple.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v63, v67, v64, v66, 66, 0, "Tried to initialize an instance of KNBuildAttributeTuple without a build or a chunk. This doesn't make sense.'");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v68, v69);
      if (!valueCopy)
      {
        goto LABEL_24;
      }

LABEL_20:
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v60 = valueCopy;
      }

      else
      {
        v60 = objc_msgSend_attributeValueForProperty_value_(KNBuildAttributes, v59, propertyCopy, valueCopy);
      }

      attributeValue = v19->_attributeValue;
      v19->_attributeValue = v60;

      v19->_definedAttributeValue = 1;
      goto LABEL_24;
    }

    v48 = objc_msgSend_chunkIdentifier(chunkCopy, v29, v30);
    if ((objc_msgSend_isValid(v48, v49, v50) & 1) == 0)
    {
      v70 = MEMORY[0x277D81150];
      v52 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v51, "[KNBuildAttributeTuple initWithBuild:chunk:property:value:]");
      v54 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v53, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNBuildAttributeTuple.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v70, v55, v52, v54, 60, 0, "Expected a valid chunk ID");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v56, v57);
    }

    buildChunkIdentifier = v19->_buildChunkIdentifier;
    v19->_buildChunkIdentifier = v48;

    v19->_definedBuildChunkIdentifier = 1;
    goto LABEL_19;
  }

LABEL_24:

  return v19;
}

- (KNBuildChunk)chunk
{
  buildChunkIdentifier = self->_buildChunkIdentifier;
  v4 = objc_msgSend_context(self, a2, v2);
  v6 = objc_msgSend_resolveToChunkUsingContext_(buildChunkIdentifier, v5, v4);

  return v6;
}

- (KNBuild)build
{
  v4 = objc_msgSend_context(self, a2, v2);
  v6 = objc_msgSend_objectWithUUID_(v4, v5, self->_buildId);

  objc_opt_class();
  v7 = TSUCheckedDynamicCast();

  return v7;
}

- (BOOL)isValidForSlide:(id)slide
{
  slideCopy = slide;
  if (objc_msgSend_isChunkTuple(self, v5, v6))
  {
    v9 = objc_msgSend_buildChunks(slideCopy, v7, v8);
    v12 = objc_msgSend_chunk(self, v10, v11);
  }

  else
  {
    if (!objc_msgSend_isBuildTuple(self, v7, v8))
    {
      v19 = 0;
      goto LABEL_7;
    }

    v9 = objc_msgSend_builds(slideCopy, v14, v15);
    v12 = objc_msgSend_build(self, v16, v17);
  }

  v18 = v12;
  v19 = objc_msgSend_containsObject_(v9, v13, v12);

LABEL_7:
  return v19;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v7 = objc_msgSend_chunk(self, v5, v6);
  v10 = objc_msgSend_build(self, v8, v9);
  v13 = objc_msgSend_property(self, v11, v12);
  v16 = objc_msgSend_value(self, v14, v15);
  v18 = objc_msgSend_stringWithFormat_(v3, v17, @"<%@ %p chunk:%p build:%p property:%@ value:%@>", v4, self, v7, v10, v13, v16);

  return v18;
}

@end