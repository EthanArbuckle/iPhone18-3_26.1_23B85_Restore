@interface TSDContainerLayout
- (TSDContainerLayout)initWithInfo:(id)info;
- (id)childInfosForLayout;
- (void)updateChildrenFromInfo;
@end

@implementation TSDContainerLayout

- (TSDContainerLayout)initWithInfo:(id)info
{
  if (info && ([info conformsToProtocol:&unk_287E2DDA0] & 1) == 0)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDContainerLayout initWithInfo:]"];
    [currentHandler handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDContainerLayout.m"), 19, @"info is wrong protocol for layout"}];
  }

  v8.receiver = self;
  v8.super_class = TSDContainerLayout;
  return [(TSDLayout *)&v8 initWithInfo:info];
}

- (id)childInfosForLayout
{
  containerInfo = [(TSDContainerLayout *)self containerInfo];

  return [containerInfo childInfos];
}

- (void)updateChildrenFromInfo
{
  v31 = *MEMORY[0x277D85DE8];
  childInfosForLayout = [(TSDContainerLayout *)self childInfosForLayout];
  children = [(TSDAbstractLayout *)self children];
  v5 = [childInfosForLayout count];
  if (v5 == [(NSArray *)children count])
  {
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v6 = [childInfosForLayout countByEnumeratingWithState:&v25 objects:v30 count:16];
    if (!v6)
    {
      goto LABEL_22;
    }

    v7 = v6;
    v8 = 0;
    v9 = *v26;
LABEL_4:
    v10 = 0;
    while (1)
    {
      if (*v26 != v9)
      {
        objc_enumerationMutation(childInfosForLayout);
      }

      v11 = *(*(&v25 + 1) + 8 * v10);
      if ([-[NSArray objectAtIndex:](children objectAtIndex:{v8), "info"}] != v11)
      {
        break;
      }

      ++v8;
      if (v7 == ++v10)
      {
        v7 = [childInfosForLayout countByEnumeratingWithState:&v25 objects:v30 count:16];
        if (v7)
        {
          goto LABEL_4;
        }

        goto LABEL_22;
      }
    }
  }

  v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
  layoutController = [(TSDLayout *)self layoutController];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v14 = [childInfosForLayout countByEnumeratingWithState:&v21 objects:v29 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v22;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v22 != v16)
        {
          objc_enumerationMutation(childInfosForLayout);
        }

        v18 = *(*(&v21 + 1) + 8 * i);
        v19 = [layoutController layoutForInfo:v18 childOfLayout:self];
        if (!v19)
        {
          v19 = [objc_alloc(objc_msgSend(v18 "layoutClass"))];
          if (!v19)
          {
            continue;
          }
        }

        v20 = v19;
        [v12 addObject:v19];
      }

      v15 = [childInfosForLayout countByEnumeratingWithState:&v21 objects:v29 count:16];
    }

    while (v15);
  }

  [(TSDAbstractLayout *)self setChildren:v12];

  [(TSDLayout *)self invalidate];
LABEL_22:
  [(NSArray *)[(TSDAbstractLayout *)self children] makeObjectsPerformSelector:sel_updateChildrenFromInfo];
}

@end