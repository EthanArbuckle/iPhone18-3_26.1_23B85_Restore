@interface TSKAnnotationAuthorStorage
- (id)authorWithName:(id)name;
- (id)nextAuthorColor;
- (void)dealloc;
- (void)p_addAuthor:(id)author isFromDocumentSupport:(BOOL)support;
- (void)removeAuthor:(id)author;
@end

@implementation TSKAnnotationAuthorStorage

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = TSKAnnotationAuthorStorage;
  [(TSKAnnotationAuthorStorage *)&v3 dealloc];
}

- (void)p_addAuthor:(id)author isFromDocumentSupport:(BOOL)support
{
  if (-[TSKAnnotationAuthorStorage authorWithName:](self, "authorWithName:", [author name]))
  {
    if (!support)
    {
      currentHandler = [MEMORY[0x277D6C290] currentHandler];
      v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSKAnnotationAuthorStorage p_addAuthor:isFromDocumentSupport:]"];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/kit/TSKAnnotationAuthorStorage.mm"];

      [currentHandler handleFailureInFunction:v9 file:v10 lineNumber:44 description:@"Cannot have two authors with the same name in a collection!"];
    }
  }

  else
  {
    if (!support)
    {
      [(TSPObject *)self willModify];
    }

    mAuthors = self->mAuthors;
    if (!mAuthors)
    {
      mAuthors = objc_alloc_init(MEMORY[0x277CBEB58]);
      self->mAuthors = mAuthors;
    }

    [(NSMutableSet *)mAuthors addObject:author];
  }
}

- (void)removeAuthor:(id)author
{
  [(TSPObject *)self willModify];
  mAuthors = self->mAuthors;

  [(NSMutableSet *)mAuthors removeObject:author];
}

- (id)authorWithName:(id)name
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  authors = [(TSKAnnotationAuthorStorage *)self authors];
  v5 = [(NSSet *)authors countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = *v12;
LABEL_3:
  v8 = 0;
  while (1)
  {
    if (*v12 != v7)
    {
      objc_enumerationMutation(authors);
    }

    v9 = *(*(&v11 + 1) + 8 * v8);
    if ([objc_msgSend(v9 "name")])
    {
      return v9;
    }

    if (v6 == ++v8)
    {
      v6 = [(NSSet *)authors countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        goto LABEL_3;
      }

      return 0;
    }
  }
}

- (id)nextAuthorColor
{
  v2 = [(NSSet *)[(TSKAnnotationAuthorStorage *)self authors] count];
  v3 = v2 % +[TSKAnnotationAuthor presetColorCount];

  return [TSKAnnotationAuthor authorStorageColorForIndex:v3];
}

@end