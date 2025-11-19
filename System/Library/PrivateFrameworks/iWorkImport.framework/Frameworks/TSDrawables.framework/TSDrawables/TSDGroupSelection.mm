@interface TSDGroupSelection
- (BOOL)isCrossContainerSelection;
- (BOOL)isEqual:(id)a3;
- (NSSet)containerGroups;
- (TSDGroupSelection)initWithContainerGroups:(id)a3 hasSelectedInfosInNonGroupContainer:(BOOL)a4;
- (TSDGroupSelection)initWithGroupInfo:(id)a3;
- (id)subclassDescription;
- (unint64_t)hash;
@end

@implementation TSDGroupSelection

- (TSDGroupSelection)initWithContainerGroups:(id)a3 hasSelectedInfosInNonGroupContainer:(BOOL)a4
{
  v6.receiver = self;
  v6.super_class = TSDGroupSelection;
  result = [(TSDDrawableSelection *)&v6 initWithInfos:a3];
  if (result)
  {
    result->_hasSelectedInfosInNonGroupContainer = a4;
  }

  return result;
}

- (TSDGroupSelection)initWithGroupInfo:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "[TSDGroupSelection initWithGroupInfo:]");
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDGroupSelection.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v10, v7, v9, 37, 0, "invalid nil value for '%{public}s'", "groupInfo");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v11, v12);
  }

  v13 = objc_msgSend_setWithObject_(MEMORY[0x277CBEB98], v4, v5);
  hasSelectedInfosInNonGroupContainer = objc_msgSend_initWithContainerGroups_hasSelectedInfosInNonGroupContainer_(self, v14, v13, 0);

  return hasSelectedInfosInNonGroupContainer;
}

- (NSSet)containerGroups
{
  v4 = objc_opt_class();

  return objc_msgSend_infosOfClass_(self, v3, v4);
}

- (BOOL)isCrossContainerSelection
{
  v4 = objc_msgSend_containerGroups(self, a2, v2);
  if (objc_msgSend_count(v4, v5, v6) <= 1)
  {
    hasSelectedInfosInNonGroupContainer = objc_msgSend_hasSelectedInfosInNonGroupContainer(self, v7, v8);
  }

  else
  {
    hasSelectedInfosInNonGroupContainer = 1;
  }

  return hasSelectedInfosInNonGroupContainer;
}

- (unint64_t)hash
{
  v3.receiver = self;
  v3.super_class = TSDGroupSelection;
  v4 = [(TSDDrawableSelection *)&v3 hash];
  return TSUHashWithSeed();
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
    v8.receiver = self;
    v8.super_class = TSDGroupSelection;
    if ([(TSDDrawableSelection *)&v8 isEqual:v4])
    {
      objc_opt_class();
      v5 = TSUDynamicCast();
      if (v5)
      {
        v6 = self->_hasSelectedInfosInNonGroupContainer == v5[16];
      }

      else
      {
        v6 = 0;
      }
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (id)subclassDescription
{
  if (objc_msgSend_isCrossContainerSelection(self, a2, v2))
  {
    return @"x-group:YES";
  }

  else
  {
    return @"x-group:NO";
  }
}

@end