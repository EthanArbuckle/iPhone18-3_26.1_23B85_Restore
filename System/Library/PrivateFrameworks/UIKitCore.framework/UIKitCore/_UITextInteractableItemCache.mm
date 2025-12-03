@interface _UITextInteractableItemCache
- (_UITextInteractableItemCache)init;
- (id)_cachedItemInSet:(id)set predicate:(id)predicate;
- (id)itemForAttachment:(id)attachment range:(id)range;
- (id)itemForLink:(id)link range:(id)range;
- (id)itemForTag:(id)tag range:(id)range;
- (void)addItem:(id)item;
- (void)invalidate;
- (void)removeItem:(id)item;
@end

@implementation _UITextInteractableItemCache

- (_UITextInteractableItemCache)init
{
  v10.receiver = self;
  v10.super_class = _UITextInteractableItemCache;
  v2 = [(_UITextInteractableItemCache *)&v10 init];
  if (v2)
  {
    v3 = objc_opt_new();
    attachmentItems = v2->_attachmentItems;
    v2->_attachmentItems = v3;

    v5 = objc_opt_new();
    linkItems = v2->_linkItems;
    v2->_linkItems = v5;

    v7 = objc_opt_new();
    tagItems = v2->_tagItems;
    v2->_tagItems = v7;
  }

  return v2;
}

- (id)itemForAttachment:(id)attachment range:(id)range
{
  attachmentCopy = attachment;
  rangeCopy = range;
  linkItems = [(_UITextInteractableItemCache *)self linkItems];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __56___UITextInteractableItemCache_itemForAttachment_range___block_invoke;
  v13[3] = &unk_1E711CD70;
  v14 = attachmentCopy;
  v15 = rangeCopy;
  v9 = rangeCopy;
  v10 = attachmentCopy;
  v11 = [(_UITextInteractableItemCache *)self _cachedItemInSet:linkItems predicate:v13];

  return v11;
}

- (id)itemForLink:(id)link range:(id)range
{
  linkCopy = link;
  rangeCopy = range;
  linkItems = [(_UITextInteractableItemCache *)self linkItems];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __50___UITextInteractableItemCache_itemForLink_range___block_invoke;
  v13[3] = &unk_1E711CD98;
  v14 = linkCopy;
  v15 = rangeCopy;
  v9 = rangeCopy;
  v10 = linkCopy;
  v11 = [(_UITextInteractableItemCache *)self _cachedItemInSet:linkItems predicate:v13];

  return v11;
}

- (id)itemForTag:(id)tag range:(id)range
{
  tagCopy = tag;
  rangeCopy = range;
  tagItems = [(_UITextInteractableItemCache *)self tagItems];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __49___UITextInteractableItemCache_itemForTag_range___block_invoke;
  v13[3] = &unk_1E711CDC0;
  v14 = tagCopy;
  v15 = rangeCopy;
  v9 = rangeCopy;
  v10 = tagCopy;
  v11 = [(_UITextInteractableItemCache *)self _cachedItemInSet:tagItems predicate:v13];

  return v11;
}

- (void)addItem:(id)item
{
  v10 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  if ([itemCopy isLinkItem])
  {
    linkItems = self->_linkItems;
LABEL_7:
    [(NSMutableSet *)linkItems addObject:itemCopy];
    goto LABEL_8;
  }

  if ([itemCopy isAttachmentItem])
  {
    linkItems = self->_attachmentItems;
    goto LABEL_7;
  }

  if ([itemCopy isTagItem])
  {
    linkItems = self->_tagItems;
    goto LABEL_7;
  }

  if (itemCopy)
  {
    if (os_variant_has_internal_diagnostics())
    {
      v7 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
      {
        v8 = 138412290;
        v9 = itemCopy;
        _os_log_fault_impl(&dword_188A29000, v7, OS_LOG_TYPE_FAULT, "Unknown interactable item %@", &v8, 0xCu);
      }
    }

    else
    {
      v6 = *(__UILogGetCategoryCachedImpl("Assert", &addItem____s_category) + 8);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v8 = 138412290;
        v9 = itemCopy;
        _os_log_impl(&dword_188A29000, v6, OS_LOG_TYPE_ERROR, "Unknown interactable item %@", &v8, 0xCu);
      }
    }
  }

LABEL_8:
}

- (void)removeItem:(id)item
{
  v10 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  if ([itemCopy isLinkItem])
  {
    linkItems = self->_linkItems;
LABEL_7:
    [(NSMutableSet *)linkItems removeObject:itemCopy];
    goto LABEL_8;
  }

  if ([itemCopy isAttachmentItem])
  {
    linkItems = self->_attachmentItems;
    goto LABEL_7;
  }

  if ([itemCopy isTagItem])
  {
    linkItems = self->_tagItems;
    goto LABEL_7;
  }

  if (itemCopy)
  {
    if (os_variant_has_internal_diagnostics())
    {
      v7 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
      {
        v8 = 138412290;
        v9 = itemCopy;
        _os_log_fault_impl(&dword_188A29000, v7, OS_LOG_TYPE_FAULT, "Unknown interactable item %@", &v8, 0xCu);
      }
    }

    else
    {
      v6 = *(__UILogGetCategoryCachedImpl("Assert", &removeItem____s_category) + 8);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v8 = 138412290;
        v9 = itemCopy;
        _os_log_impl(&dword_188A29000, v6, OS_LOG_TYPE_ERROR, "Unknown interactable item %@", &v8, 0xCu);
      }
    }
  }

LABEL_8:
}

- (void)invalidate
{
  [(NSMutableSet *)self->_attachmentItems removeAllObjects];
  [(NSMutableSet *)self->_linkItems removeAllObjects];
  tagItems = self->_tagItems;

  [(NSMutableSet *)tagItems removeAllObjects];
}

- (id)_cachedItemInSet:(id)set predicate:(id)predicate
{
  predicateCopy = predicate;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __59___UITextInteractableItemCache__cachedItemInSet_predicate___block_invoke;
  v10[3] = &unk_1E711CDE8;
  v11 = predicateCopy;
  v6 = predicateCopy;
  v7 = [set objectsPassingTest:v10];
  anyObject = [v7 anyObject];

  return anyObject;
}

@end