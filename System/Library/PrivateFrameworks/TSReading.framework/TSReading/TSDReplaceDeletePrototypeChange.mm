@interface TSDReplaceDeletePrototypeChange
- (NSString)description;
- (TSSPropertySource)propertiesAfterChange;
- (TSSPropertySource)propertiesBeforeChange;
- (id)initDeletePrototypeChangeForPrototype:(id)a3 replacement:(id)a4;
- (id)initReplacePrototypeChangeForPrototype:(id)a3 toReplacement:(id)a4;
- (void)dealloc;
@end

@implementation TSDReplaceDeletePrototypeChange

- (id)initReplacePrototypeChangeForPrototype:(id)a3 toReplacement:(id)a4
{
  v9.receiver = self;
  v9.super_class = TSDReplaceDeletePrototypeChange;
  v6 = [(TSDReplaceDeletePrototypeChange *)&v9 init];
  v7 = v6;
  if (v6)
  {
    v6->mPrototypeIsBeingReplaced = 1;
    v6->mPrototype = a3;
    v7->mReplacement = a4;
  }

  return v7;
}

- (id)initDeletePrototypeChangeForPrototype:(id)a3 replacement:(id)a4
{
  v9.receiver = self;
  v9.super_class = TSDReplaceDeletePrototypeChange;
  v6 = [(TSDReplaceDeletePrototypeChange *)&v9 init];
  v7 = v6;
  if (v6)
  {
    v6->mPrototypeIsBeingDeleted = 1;
    v6->mPrototypeIsBeingReplaced = a4 != 0;
    v6->mPrototype = a3;
    v7->mReplacement = a4;
  }

  return v7;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = TSDReplaceDeletePrototypeChange;
  [(TSDReplaceDeletePrototypeChange *)&v3 dealloc];
}

- (NSString)description
{
  v3 = [(TSDReplaceDeletePrototypeChange *)self prototypeIsBeingReplaced];
  v4 = MEMORY[0x277D6C2C8];
  v5 = objc_opt_class();
  if (v3)
  {
    v6 = [v4 descriptionWithObject:self class:v5 format:{@": replaced with %p", -[TSDReplaceDeletePrototypeChange replacement](self, "replacement")}];
  }

  else
  {
    v6 = [v4 descriptionWithObject:self class:v5 format:{@": unchanged", v10}];
  }

  v7 = v6;
  if ([(TSDReplaceDeletePrototypeChange *)self prototypeIsBeingDeleted])
  {
    if ([(TSDReplaceDeletePrototypeChange *)self prototypeIsBeingDeleted])
    {
      v8 = @"YES";
    }

    else
    {
      v8 = @"NO";
    }

    [v7 addField:@"prototypeIsBeingDeleted" value:v8];
  }

  return [v7 descriptionString];
}

- (TSSPropertySource)propertiesBeforeChange
{
  [(TSDReplaceDeletePrototypeChange *)self prototype];
  v3 = TSUProtocolCast();
  if (!v3)
  {
    v4 = [MEMORY[0x277D6C290] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDReplaceDeletePrototypeChange propertiesBeforeChange]"];
    [v4 handleFailureInFunction:v5 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDPrototypeChange.m"), 98, @"Tried to treat %@ as a property source when it's not", -[TSDReplaceDeletePrototypeChange prototype](self, "prototype")}];
  }

  return v3;
}

- (TSSPropertySource)propertiesAfterChange
{
  if ([(TSDReplaceDeletePrototypeChange *)self prototypeIsBeingDeleted])
  {
    if (![(TSDReplaceDeletePrototypeChange *)self prototypeIsBeingReplaced])
    {
      v3 = [MEMORY[0x277D6C290] currentHandler];
      v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDReplaceDeletePrototypeChange propertiesAfterChange]"];
      [v3 handleFailureInFunction:v4 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDPrototypeChange.m"), 104, @"%@ is being deleted, but we're calling -newProperties on a prototypeChange for it.", -[TSDReplaceDeletePrototypeChange prototype](self, "prototype")}];
    }
  }

  if ([(TSDReplaceDeletePrototypeChange *)self prototypeIsBeingReplaced])
  {
    [(TSDReplaceDeletePrototypeChange *)self replacement];
    result = TSUProtocolCast();
    if (result)
    {
      return result;
    }

    v6 = [MEMORY[0x277D6C290] currentHandler];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDReplaceDeletePrototypeChange propertiesAfterChange]"];
    [v6 handleFailureInFunction:v7 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDPrototypeChange.m"), 107, @"Tried to treat %@ as a property source when it's not", -[TSDReplaceDeletePrototypeChange replacement](self, "replacement")}];
  }

  return 0;
}

@end