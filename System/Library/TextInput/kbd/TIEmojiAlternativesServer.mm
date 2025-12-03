@interface TIEmojiAlternativesServer
+ (id)sharedInstance;
- (void)alternativesForText:(id)text completionHandler:(id)handler;
- (void)updateForActiveLocaleIdentifiers:(id)identifiers;
@end

@implementation TIEmojiAlternativesServer

+ (id)sharedInstance
{
  if (qword_100026588 != -1)
  {
    sub_10000D6DC();
  }

  v3 = qword_100026580;

  return v3;
}

- (void)updateForActiveLocaleIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  if (![(NSArray *)self->_localeIdentifiers isEqualToArray:identifiersCopy])
  {
    objc_storeStrong(&self->_localeIdentifiers, identifiers);
    v6 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [identifiersCopy count]);
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v7 = identifiersCopy;
    v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v16;
      do
      {
        v11 = 0;
        do
        {
          if (*v16 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = [TIInputMode inputModeWithIdentifier:*(*(&v15 + 1) + 8 * v11), v15];
          if (v12)
          {
            [v6 addObject:v12];
          }

          v11 = v11 + 1;
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v9);
    }

    v13 = [[TIEmojiCandidateGenerator alloc] initWithActiveInputModes:v6];
    generator = self->_generator;
    self->_generator = v13;
  }
}

- (void)alternativesForText:(id)text completionHandler:(id)handler
{
  handlerCopy = handler;
  v7 = handlerCopy;
  generator = self->_generator;
  if (generator)
  {
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100004FEC;
    v9[3] = &unk_10001C910;
    v10 = handlerCopy;
    [(TIEmojiCandidateGenerator *)generator emojiAlternativesForText:text completionHandler:v9];
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, &stru_10001CFB8, &__NSArray0__struct);
  }
}

@end