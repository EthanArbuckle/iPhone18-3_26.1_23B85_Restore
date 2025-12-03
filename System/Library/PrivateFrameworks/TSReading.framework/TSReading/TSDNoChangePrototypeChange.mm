@interface TSDNoChangePrototypeChange
- (NSString)description;
- (TSSPropertySource)propertiesBeforeChange;
- (id)initNoChangePrototypeChangeForPrototype:(id)prototype;
- (void)dealloc;
@end

@implementation TSDNoChangePrototypeChange

- (id)initNoChangePrototypeChangeForPrototype:(id)prototype
{
  v6.receiver = self;
  v6.super_class = TSDNoChangePrototypeChange;
  v4 = [(TSDNoChangePrototypeChange *)&v6 init];
  if (v4)
  {
    v4->mPrototype = prototype;
  }

  return v4;
}

- (NSString)description
{
  v2 = [MEMORY[0x277D6C2C8] descriptionWithObject:self class:objc_opt_class() format:@": unchanged"];

  return [v2 descriptionString];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = TSDNoChangePrototypeChange;
  [(TSDNoChangePrototypeChange *)&v3 dealloc];
}

- (TSSPropertySource)propertiesBeforeChange
{
  v3 = TSUProtocolCast();
  if (!v3)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDNoChangePrototypeChange propertiesBeforeChange]"];
    [currentHandler handleFailureInFunction:v5 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDPrototypeChange.m"), 293, @"Tried to treat %@ as a property source when it's not", self->mPrototype}];
  }

  return v3;
}

@end