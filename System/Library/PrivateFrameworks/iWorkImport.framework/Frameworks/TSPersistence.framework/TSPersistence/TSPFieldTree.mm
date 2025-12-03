@interface TSPFieldTree
- (BOOL)addField:(id)field;
- (TSPFieldTree)init;
- (void)saveToArchiver:(id)archiver;
@end

@implementation TSPFieldTree

- (TSPFieldTree)init
{
  v6.receiver = self;
  v6.super_class = TSPFieldTree;
  v2 = [(TSPFieldTree *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(TSPFieldTreeNodeWithChildren);
    rootNode = v2->_rootNode;
    v2->_rootNode = v3;
  }

  return v2;
}

- (BOOL)addField:(id)field
{
  fieldCopy = field;
  v5 = self->_rootNode;
  v8 = objc_msgSend_fieldInfo(fieldCopy, v6, v7);
  if (*(v8 + 104))
  {
    v10 = *(v8 + 104);
  }

  else
  {
    v10 = &qword_2812FC940;
  }

  v11 = *(v10 + 4);
  if (v11 >= 1 && v5 != 0)
  {
    v14 = 0;
    v15 = v5;
    while (1)
    {
      v16 = *(v10[3] + 4 * v14);
      v17 = objc_msgSend_childNodeForFieldNumber_(v15, v9, v16);
      if (v17)
      {
        objc_opt_class();
        v5 = TSUDynamicCast();
      }

      else
      {
        if (v14 >= (v11 - 1))
        {
          v19 = objc_alloc_init(TSPFieldTreeNodeWithUnknownField);
          objc_msgSend_setField_(v19, v20, fieldCopy);
          objc_msgSend_addChildNode_forFieldNumber_(v15, v21, v19, v16);

          v13 = 1;
          v5 = v15;
          goto LABEL_18;
        }

        v5 = objc_alloc_init(TSPFieldTreeNodeWithChildren);
        objc_msgSend_addChildNode_forFieldNumber_(v15, v18, v5, v16);
      }

      v13 = 0;
      if (++v14 < v11)
      {
        v15 = v5;
        if (v5)
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  v13 = 0;
LABEL_18:

  return v13;
}

- (void)saveToArchiver:(id)archiver
{
  archiverCopy = archiver;
  rootNode = self->_rootNode;
  v10 = archiverCopy;
  v8 = objc_msgSend_message(archiverCopy, v6, v7);
  objc_msgSend_saveToArchiver_message_(rootNode, v9, v10, v8);
}

@end