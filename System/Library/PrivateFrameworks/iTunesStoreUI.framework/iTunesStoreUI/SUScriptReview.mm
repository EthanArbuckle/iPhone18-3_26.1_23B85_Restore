@interface SUScriptReview
+ (id)webScriptNameForKeyName:(id)a3;
+ (id)webScriptNameForSelector:(SEL)a3;
+ (void)initialize;
- (NSNumber)rating;
- (NSString)body;
- (NSString)infoURL;
- (NSString)nickname;
- (NSString)title;
- (SUScriptReview)initWithReview:(id)a3;
- (id)copyReview;
- (id)scriptAttributeKeys;
- (void)dealloc;
- (void)setBody:(id)a3;
- (void)setInfoURL:(id)a3;
- (void)setNickname:(id)a3;
- (void)setRating:(id)a3;
- (void)setTitle:(id)a3;
@end

@implementation SUScriptReview

- (SUScriptReview)initWithReview:(id)a3
{
  v8.receiver = self;
  v8.super_class = SUScriptReview;
  v4 = [(SUScriptObject *)&v8 init];
  if (v4)
  {
    if (a3)
    {
      v5 = [a3 copy];
    }

    else
    {
      v6 = ISUIMobileStoreUIFramework();
      v5 = objc_alloc_init(ISUIWeakLinkedClassForString(&cfstr_Suuireviewmeta.isa, v6));
    }

    v4->_review = v5;
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SUScriptReview;
  [(SUScriptObject *)&v3 dealloc];
}

- (id)copyReview
{
  [(SUScriptObject *)self lock];
  v3 = [(SUUIReviewMetadata *)self->_review copy];
  [(SUScriptObject *)self unlock];
  return v3;
}

- (NSString)body
{
  [(SUScriptObject *)self lock];
  v3 = [(SUUIReviewMetadata *)self->_review body];
  [(SUScriptObject *)self unlock];
  return v3;
}

- (NSString)infoURL
{
  [(SUScriptObject *)self lock];
  v3 = [(NSURL *)self->_infoURL absoluteString];
  [(SUScriptObject *)self unlock];
  return v3;
}

- (NSString)nickname
{
  [(SUScriptObject *)self lock];
  v3 = [(SUUIReviewMetadata *)self->_review nickname];
  [(SUScriptObject *)self unlock];
  return v3;
}

- (NSNumber)rating
{
  [(SUScriptObject *)self lock];
  v3 = MEMORY[0x1E696AD98];
  [(SUUIReviewMetadata *)self->_review rating];
  v4 = [v3 numberWithFloat:?];
  [(SUScriptObject *)self unlock];
  return v4;
}

- (void)setBody:(id)a3
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = 0;
    goto LABEL_3;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v5 = 0;
  if (!a3 || (isKindOfClass & 1) != 0 || (objc_opt_class(), v5 = a3, (objc_opt_isKindOfClass() & 1) != 0))
  {
LABEL_3:
    [(SUScriptObject *)self lock];
    [(SUUIReviewMetadata *)self->_review setBody:v5];

    [(SUScriptObject *)self unlock];
    return;
  }

  v7 = MEMORY[0x1E69E2F88];

  [v7 throwException:@"Invalid argument"];
}

- (void)setInfoURL:(id)a3
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = 0;
    v6 = 1;
    goto LABEL_3;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v5 = 0;
  v6 = 1;
  if (!a3 || (isKindOfClass & 1) != 0)
  {
LABEL_3:
    [(SUScriptObject *)self lock];

    if (v6)
    {
      v7 = 0;
    }

    else
    {
      v7 = [objc_alloc(MEMORY[0x1E695DFF8]) initWithString:v5];
    }

    self->_infoURL = v7;

    [(SUScriptObject *)self unlock];
    return;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = 0;
    v5 = a3;
    goto LABEL_3;
  }

  v9 = MEMORY[0x1E69E2F88];

  [v9 throwException:@"Invalid argument"];
}

- (void)setNickname:(id)a3
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = 0;
    goto LABEL_3;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v5 = 0;
  if (!a3 || (isKindOfClass & 1) != 0 || (objc_opt_class(), v5 = a3, (objc_opt_isKindOfClass() & 1) != 0))
  {
LABEL_3:
    [(SUScriptObject *)self lock];
    [(SUUIReviewMetadata *)self->_review setNickname:v5];

    [(SUScriptObject *)self unlock];
    return;
  }

  v7 = MEMORY[0x1E69E2F88];

  [v7 throwException:@"Invalid argument"];
}

- (void)setRating:(id)a3
{
  if (objc_opt_respondsToSelector())
  {
    [(SUScriptObject *)self lock];
    review = self->_review;
    [a3 floatValue];
    [(SUUIReviewMetadata *)review setRating:?];

    [(SUScriptObject *)self unlock];
  }

  else
  {
    v6 = MEMORY[0x1E69E2F88];

    [v6 throwException:@"Invalid argument"];
  }
}

- (void)setTitle:(id)a3
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = 0;
    goto LABEL_3;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v5 = 0;
  if (!a3 || (isKindOfClass & 1) != 0 || (objc_opt_class(), v5 = a3, (objc_opt_isKindOfClass() & 1) != 0))
  {
LABEL_3:
    [(SUScriptObject *)self lock];
    [(SUUIReviewMetadata *)self->_review setTitle:v5];

    [(SUScriptObject *)self unlock];
    return;
  }

  v7 = MEMORY[0x1E69E2F88];

  [v7 throwException:@"Invalid argument"];
}

- (NSString)title
{
  [(SUScriptObject *)self lock];
  v3 = [(SUUIReviewMetadata *)self->_review title];
  [(SUScriptObject *)self unlock];
  return v3;
}

+ (id)webScriptNameForKeyName:(id)a3
{
  result = [__KeyMapping_41 objectForKey:?];
  if (!result)
  {
    v6.receiver = a1;
    v6.super_class = &OBJC_METACLASS___SUScriptReview;
    return objc_msgSendSuper2(&v6, sel_webScriptNameForKeyName_, a3);
  }

  return result;
}

+ (id)webScriptNameForSelector:(SEL)a3
{
  result = SUWebScriptNameForSelector2(a3, &__SelectorMapping_33, 3);
  if (!result)
  {
    v6.receiver = a1;
    v6.super_class = &OBJC_METACLASS___SUScriptReview;
    return objc_msgSendSuper2(&v6, sel_webScriptNameForSelector_, a3);
  }

  return result;
}

- (id)scriptAttributeKeys
{
  v4.receiver = self;
  v4.super_class = SUScriptReview;
  v2 = [(SUScriptObject *)&v4 scriptAttributeKeys];
  -[NSMutableArray addObjectsFromArray:](v2, "addObjectsFromArray:", [__KeyMapping_41 allKeys]);
  return v2;
}

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    __SelectorMapping_33 = sel_removeDraft;
    unk_1EBF3B1A0 = @"removeDraft";
    qword_1EBF3B1A8 = sel_restoreFromDraft;
    unk_1EBF3B1B0 = @"restoreFromDraft";
    qword_1EBF3B1B8 = sel_saveAsDraft;
    unk_1EBF3B1C0 = @"saveAsDraft";
    __KeyMapping_41 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{@"adamID", @"body", @"body", @"hasSavedDraft", @"hasSavedDraft", @"infoURL", @"infoURL", @"itemType", @"itemType", @"nickname", @"nickname", @"nicknameIsConfirmed", @"nicknameIsConfirmed", @"rating", @"rating", @"title", @"title", 0}];
  }
}

@end