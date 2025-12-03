@interface TSDModifyPrototypeChange
- (NSString)description;
- (TSSPropertySource)propertiesAfterChange;
- (TSSPropertySource)propertiesBeforeChange;
- (id)initModifyPrototypeChangeForPrototype:(id)prototype;
- (void)dealloc;
@end

@implementation TSDModifyPrototypeChange

- (id)initModifyPrototypeChangeForPrototype:(id)prototype
{
  v6.receiver = self;
  v6.super_class = TSDModifyPrototypeChange;
  v4 = [(TSDModifyPrototypeChange *)&v6 init];
  if (v4)
  {
    v4->mChangedPropertySet = objc_alloc_init(TSSMutablePropertySet);
    v4->mPrototype = prototype;
    v4->mChangedPropertyMapBeforeChange = objc_alloc_init(TSSPropertyMap);
    v4->mChangedPropertyMapAfterChange = objc_alloc_init(TSSPropertyMap);
    v4->mPropertiesWithOldValuesRecordedButNotNewValues = objc_alloc_init(TSSMutablePropertySet);
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = TSDModifyPrototypeChange;
  [(TSDModifyPrototypeChange *)&v3 dealloc];
}

- (NSString)description
{
  v3 = [MEMORY[0x277D6C2C8] descriptionWithObject:self class:objc_opt_class() format:@": changed properties"];
  if ([(TSDModifyPrototypeChange *)self changedPropertySet])
  {
    [v3 addField:@"mChangedPropertySet" value:{-[TSSMutablePropertySet description](-[TSDModifyPrototypeChange changedPropertySet](self, "changedPropertySet"), "description")}];
  }

  return [v3 descriptionString];
}

- (TSSPropertySource)propertiesBeforeChange
{
  [(TSDModifyPrototypeChange *)self prototype];
  if (!TSUProtocolCast())
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDModifyPrototypeChange propertiesBeforeChange]"];
    [currentHandler handleFailureInFunction:v4 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDPrototypeChange.m"), 202, @"Tried to treat %@ as a property source when it's not", -[TSDModifyPrototypeChange prototype](self, "prototype")}];
  }

  result = self->mPropertySourceBeforeChange;
  if (!result)
  {
    result = [[TSDPropertySourceForModifyPrototypeChange alloc] initWithPrototypeChange:self afterChange:0];
    self->mPropertySourceBeforeChange = result;
  }

  return result;
}

- (TSSPropertySource)propertiesAfterChange
{
  [(TSDModifyPrototypeChange *)self prototype];
  if (!TSUProtocolCast())
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDModifyPrototypeChange propertiesAfterChange]"];
    [currentHandler handleFailureInFunction:v4 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDPrototypeChange.m"), 216, @"Tried to treat %@ as a property source when it's not", -[TSDModifyPrototypeChange prototype](self, "prototype")}];
  }

  result = self->mPropertySourceAfterChange;
  if (!result)
  {
    result = [[TSDPropertySourceForModifyPrototypeChange alloc] initWithPrototypeChange:self afterChange:1];
    self->mPropertySourceAfterChange = result;
  }

  return result;
}

@end