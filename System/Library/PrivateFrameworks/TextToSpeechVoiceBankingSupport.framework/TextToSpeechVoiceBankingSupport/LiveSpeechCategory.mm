@interface LiveSpeechCategory
+ (id)addCategoryWithName:(id)name symbol:(id)symbol error:(id *)error;
+ (id)categoryForID:(id)d;
+ (id)makeEmptyCategory;
+ (id)observeChanges:(id)changes;
+ (void)deleteCategory:(id)category;
+ (void)deleteCategoryWithID:(id)d;
- (BOOL)addPhrase:(id)phrase inputID:(id)d error:(id *)error;
- (BOOL)deletePhrase:(id)phrase error:(id *)error;
- (BOOL)isRecents;
- (BOOL)isSaved;
- (LiveSpeechCategory)init;
- (NSString)localizedName;
- (id)phrases;
@end

@implementation LiveSpeechCategory

- (LiveSpeechCategory)init
{
  v2 = (self + OBJC_IVAR___LiveSpeechCategory_name);
  *v2 = 0;
  v2[1] = 0xE000000000000000;
  v3 = (self + OBJC_IVAR___LiveSpeechCategory_symbol);
  *v3 = 0;
  v3[1] = 0xE000000000000000;
  v4 = (self + OBJC_IVAR___LiveSpeechCategory_categoryID);
  *v4 = 0;
  v4[1] = 0xE000000000000000;
  v6.receiver = self;
  v6.super_class = LiveSpeechCategory;
  return [(LiveSpeechCategory *)&v6 init];
}

- (BOOL)isSaved
{
  selfCopy = self;
  categoryID = [(LiveSpeechCategory *)selfCopy categoryID];
  v4 = sub_23328D98C();
  v6 = v5;

  if (v4 == 0x6465766153 && v6 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v8 = sub_23328E54C();
  }

  return v8 & 1;
}

- (BOOL)isRecents
{
  selfCopy = self;
  categoryID = [(LiveSpeechCategory *)selfCopy categoryID];
  v4 = sub_23328D98C();
  v6 = v5;

  if (v4 == 0x73746E65636552 && v6 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v8 = sub_23328E54C();
  }

  return v8 & 1;
}

- (NSString)localizedName
{
  selfCopy = self;
  sub_2331F1030();

  v3 = sub_23328D95C();

  return v3;
}

- (id)phrases
{
  selfCopy = self;
  sub_2331F11B4();

  type metadata accessor for LiveSpeechPhrase(v3);
  v4 = sub_23328DBDC();

  return v4;
}

- (BOOL)addPhrase:(id)phrase inputID:(id)d error:(id *)error
{
  v7 = sub_23328D98C();
  v9 = v8;
  if (d)
  {
    v10 = sub_23328D98C();
    d = v11;
  }

  else
  {
    v10 = 0;
  }

  selfCopy = self;
  sub_2331F14CC(v7, v9, v10, d);

  return 1;
}

- (BOOL)deletePhrase:(id)phrase error:(id *)error
{
  phraseCopy = phrase;
  selfCopy = self;
  sub_2331F24E8(phraseCopy);

  return 1;
}

+ (id)makeEmptyCategory
{
  v2 = sub_2331F5704();

  return v2;
}

+ (id)categoryForID:(id)d
{
  v3 = sub_23328D98C();
  v5 = sub_2331F5C38(v3, v4);

  return v5;
}

+ (id)addCategoryWithName:(id)name symbol:(id)symbol error:(id *)error
{
  v5 = sub_23328D98C();
  v7 = v6;
  v8 = sub_23328D98C();
  v10 = sub_2331F6388(v5, v7, v8, v9);

  return v10;
}

+ (void)deleteCategory:(id)category
{
  categoryCopy = category;
  categoryID = [categoryCopy categoryID];
  if (!categoryID)
  {
    sub_23328D98C();
    categoryID = sub_23328D95C();
  }

  [self deleteCategoryWithID_];
}

+ (void)deleteCategoryWithID:(id)d
{
  v3 = sub_23328D98C();
  sub_2331F68B8(v3, v4);
}

+ (id)observeChanges:(id)changes
{
  v3 = _Block_copy(changes);
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  if (qword_27DDF8160 != -1)
  {
    swift_once();
  }

  v5 = qword_27DDF8168;
  swift_getKeyPath();
  v6 = swift_allocObject();
  *(v6 + 16) = sub_2331F8114;
  *(v6 + 24) = v4;
  v7 = v5;

  v8 = sub_23328CACC();

  return v8;
}

@end