@interface _UITextInteractableItemCache
- (_UITextInteractableItemCache)init;
- (id)_cachedItemInSet:(id)a3 predicate:(id)a4;
- (id)itemForAttachment:(id)a3 range:(id)a4;
- (id)itemForLink:(id)a3 range:(id)a4;
- (id)itemForTag:(id)a3 range:(id)a4;
- (void)addItem:(id)a3;
- (void)invalidate;
- (void)removeItem:(id)a3;
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

- (id)itemForAttachment:(id)a3 range:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(_UITextInteractableItemCache *)self linkItems];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __56___UITextInteractableItemCache_itemForAttachment_range___block_invoke;
  v13[3] = &unk_1E711CD70;
  v14 = v6;
  v15 = v7;
  v9 = v7;
  v10 = v6;
  v11 = [(_UITextInteractableItemCache *)self _cachedItemInSet:v8 predicate:v13];

  return v11;
}

- (id)itemForLink:(id)a3 range:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(_UITextInteractableItemCache *)self linkItems];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __50___UITextInteractableItemCache_itemForLink_range___block_invoke;
  v13[3] = &unk_1E711CD98;
  v14 = v6;
  v15 = v7;
  v9 = v7;
  v10 = v6;
  v11 = [(_UITextInteractableItemCache *)self _cachedItemInSet:v8 predicate:v13];

  return v11;
}

- (id)itemForTag:(id)a3 range:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(_UITextInteractableItemCache *)self tagItems];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __49___UITextInteractableItemCache_itemForTag_range___block_invoke;
  v13[3] = &unk_1E711CDC0;
  v14 = v6;
  v15 = v7;
  v9 = v7;
  v10 = v6;
  v11 = [(_UITextInteractableItemCache *)self _cachedItemInSet:v8 predicate:v13];

  return v11;
}

- (void)addItem:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([v4 isLinkItem])
  {
    linkItems = self->_linkItems;
LABEL_7:
    [(NSMutableSet *)linkItems addObject:v4];
    goto LABEL_8;
  }

  if ([v4 isAttachmentItem])
  {
    linkItems = self->_attachmentItems;
    goto LABEL_7;
  }

  if ([v4 isTagItem])
  {
    linkItems = self->_tagItems;
    goto LABEL_7;
  }

  if (v4)
  {
    if (os_variant_has_internal_diagnostics())
    {
      v7 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
      {
        v8 = 138412290;
        v9 = v4;
        _os_log_fault_impl(&dword_188A29000, v7, OS_LOG_TYPE_FAULT, "Unknown interactable item %@", &v8, 0xCu);
      }
    }

    else
    {
      v6 = *(__UILogGetCategoryCachedImpl("Assert", &addItem____s_category) + 8);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v8 = 138412290;
        v9 = v4;
        _os_log_impl(&dword_188A29000, v6, OS_LOG_TYPE_ERROR, "Unknown interactable item %@", &v8, 0xCu);
      }
    }
  }

LABEL_8:
}

- (void)removeItem:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([v4 isLinkItem])
  {
    linkItems = self->_linkItems;
LABEL_7:
    [(NSMutableSet *)linkItems removeObject:v4];
    goto LABEL_8;
  }

  if ([v4 isAttachmentItem])
  {
    linkItems = self->_attachmentItems;
    goto LABEL_7;
  }

  if ([v4 isTagItem])
  {
    linkItems = self->_tagItems;
    goto LABEL_7;
  }

  if (v4)
  {
    if (os_variant_has_internal_diagnostics())
    {
      v7 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
      {
        v8 = 138412290;
        v9 = v4;
        _os_log_fault_impl(&dword_188A29000, v7, OS_LOG_TYPE_FAULT, "Unknown interactable item %@", &v8, 0xCu);
      }
    }

    else
    {
      v6 = *(__UILogGetCategoryCachedImpl("Assert", &removeItem____s_category) + 8);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v8 = 138412290;
        v9 = v4;
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

- (id)_cachedItemInSet:(id)a3 predicate:(id)a4
{
  v5 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __59___UITextInteractableItemCache__cachedItemInSet_predicate___block_invoke;
  v10[3] = &unk_1E711CDE8;
  v11 = v5;
  v6 = v5;
  v7 = [a3 objectsPassingTest:v10];
  v8 = [v7 anyObject];

  return v8;
}

@end