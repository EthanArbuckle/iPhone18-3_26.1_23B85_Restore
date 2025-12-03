@interface WBSUserDefinedContentBlockerAction
- ($01BB1521EC52D44A8E7628F5261DCEC8)edgeInsets;
- (CGRect)bounds;
- (NSArray)selectorsForStyleSheetRules;
- (WBSUserDefinedContentBlockerAction)initWithDatabaseID:(int64_t)d selector:(id)selector type:(id)type extraAttributesData:(id)data isGlobal:(BOOL)global;
- (WBSUserDefinedContentBlockerAction)initWithSelector:(id)selector type:(id)type isGlobal:(BOOL)global;
- (id)debugDescription;
- (id)extraAttributesData;
- (void)_readExtraAttributesWithData:(id)data;
- (void)addHostWhereActionHasApplied:(id)applied selectors:(id)selectors;
- (void)extraAttributesData;
@end

@implementation WBSUserDefinedContentBlockerAction

- (WBSUserDefinedContentBlockerAction)initWithSelector:(id)selector type:(id)type isGlobal:(BOOL)global
{
  selectorCopy = selector;
  typeCopy = type;
  v15.receiver = self;
  v15.super_class = WBSUserDefinedContentBlockerAction;
  v11 = [(WBSUserDefinedContentBlockerAction *)&v15 init];
  v12 = v11;
  if (v11)
  {
    v11->_databaseID = 0;
    objc_storeStrong(&v11->_selector, selector);
    objc_storeStrong(&v12->_typeString, type);
    v12->_global = global;
    v13 = v12;
  }

  return v12;
}

- (WBSUserDefinedContentBlockerAction)initWithDatabaseID:(int64_t)d selector:(id)selector type:(id)type extraAttributesData:(id)data isGlobal:(BOOL)global
{
  globalCopy = global;
  dataCopy = data;
  v13 = [(WBSUserDefinedContentBlockerAction *)self initWithSelector:selector type:type isGlobal:globalCopy];
  v14 = v13;
  if (v13)
  {
    v13->_databaseID = d;
    [(WBSUserDefinedContentBlockerAction *)v13 _readExtraAttributesWithData:dataCopy];
    v15 = v14;
  }

  return v14;
}

- (void)_readExtraAttributesWithData:(id)data
{
  if (data)
  {
    v4 = MEMORY[0x1E696ACD0];
    v5 = MEMORY[0x1E695DFD8];
    dataCopy = data;
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = objc_opt_class();
    v12 = [v5 setWithObjects:{v7, v8, v9, v10, v11, objc_opt_class(), 0}];
    v56 = 0;
    v13 = [v4 unarchivedObjectOfClasses:v12 fromData:dataCopy error:&v56];

    v14 = v56;
    if (v14 && (v15 = WBS_LOG_CHANNEL_PREFIXUserDefinedContentBlocker(), os_log_type_enabled(v15, OS_LOG_TYPE_ERROR)))
    {
      [(WBSUserDefinedContentBlockerAction *)v15 _readExtraAttributesWithData:v14];
      if (v13)
      {
LABEL_5:
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v16 = [v13 safari_stringForKey:@"searchableText"];
          searchableText = self->_searchableText;
          self->_searchableText = v16;

          v18 = [v13 safari_stringForKey:@"renderTreeText"];
          renderTreeText = self->_renderTreeText;
          self->_renderTreeText = v18;

          v20 = [v13 safari_stringForKey:@"screenReaderText"];
          screenReaderText = self->_screenReaderText;
          self->_screenReaderText = v20;

          v22 = [v13 safari_stringForKey:@"imageAnalysisText"];
          imageAnalysisText = self->_imageAnalysisText;
          self->_imageAnalysisText = v22;

          v24 = [v13 safari_arrayForKey:@"bounds"];
          if ([v24 count] == 4)
          {
            v25 = [v24 safari_numberAtIndex:0];
            [v25 doubleValue];
            v27 = v26;
            v28 = [v24 safari_numberAtIndex:1];
            [v28 doubleValue];
            v30 = v29;
            v31 = [v24 safari_numberAtIndex:2];
            [v31 doubleValue];
            v33 = v32;
            v34 = [v24 safari_numberAtIndex:3];
            [v34 doubleValue];
            self->_bounds.origin.x = v27;
            self->_bounds.origin.y = v30;
            self->_bounds.size.width = v33;
            self->_bounds.size.height = v35;
          }

          v36 = [v13 safari_setForKey:@"mediaAndLinkURLs"];
          mediaAndLinkURLs = self->_mediaAndLinkURLs;
          self->_mediaAndLinkURLs = v36;

          v38 = [v13 safari_arrayForKey:@"allSelectorsIncludingShadowHosts"];
          allSelectorsIncludingShadowHosts = self->_allSelectorsIncludingShadowHosts;
          self->_allSelectorsIncludingShadowHosts = v38;

          v40 = [v13 safari_numberForKey:@"edgeAnchors"];
          self->_edgeAnchors = [v40 integerValue];

          v41 = [v13 safari_arrayForKey:@"edgeInsets"];
          v42 = v41;
          if (v41)
          {
            if ([v41 count] == 4)
            {
              v43 = [v42 safari_numberAtIndex:0];
              [v43 doubleValue];
              self->_edgeInsets.left = v44;

              v45 = [v42 safari_numberAtIndex:1];
              [v45 doubleValue];
              self->_edgeInsets.top = v46;

              v47 = [v42 safari_numberAtIndex:2];
              [v47 doubleValue];
              self->_edgeInsets.right = v48;

              v49 = [v42 safari_numberAtIndex:3];
              [v49 doubleValue];
              self->_edgeInsets.bottom = v50;
            }
          }

          v51 = [v13 safari_numberForKey:@"viewZoomFactor"];
          [v51 doubleValue];
          self->_viewZoomScale = v52;

          v53 = [v13 safari_numberForKey:@"positionType"];
          self->_positionType = [v53 intValue];

          v54 = [v13 safari_setForKey:@"hostsWhereActionHasApplied"];
          hostsWhereActionHasApplied = self->_hostsWhereActionHasApplied;
          self->_hostsWhereActionHasApplied = v54;
        }
      }
    }

    else if (v13)
    {
      goto LABEL_5;
    }
  }
}

- (id)extraAttributesData
{
  v29[4] = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  [dictionary setObject:self->_searchableText forKeyedSubscript:@"searchableText"];
  [dictionary setObject:self->_renderTreeText forKeyedSubscript:@"renderTreeText"];
  [dictionary setObject:self->_screenReaderText forKeyedSubscript:@"screenReaderText"];
  [dictionary setObject:self->_imageAnalysisText forKeyedSubscript:@"imageAnalysisText"];
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:self->_bounds.origin.x];
  v29[0] = v4;
  v5 = [MEMORY[0x1E696AD98] numberWithDouble:self->_bounds.origin.y];
  v29[1] = v5;
  v6 = [MEMORY[0x1E696AD98] numberWithDouble:self->_bounds.size.width];
  v29[2] = v6;
  v7 = [MEMORY[0x1E696AD98] numberWithDouble:self->_bounds.size.height];
  v29[3] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:4];
  [dictionary setObject:v8 forKeyedSubscript:@"bounds"];

  v9 = [MEMORY[0x1E696AD98] numberWithDouble:self->_bounds.size.width];
  v28[0] = v9;
  v10 = [MEMORY[0x1E696AD98] numberWithDouble:self->_bounds.size.height];
  v28[1] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:2];
  [dictionary setObject:v11 forKeyedSubscript:@"webViewSize"];

  [dictionary setObject:self->_allSelectorsIncludingShadowHosts forKeyedSubscript:@"allSelectorsIncludingShadowHosts"];
  v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_edgeAnchors];
  [dictionary setObject:v12 forKeyedSubscript:@"edgeAnchors"];

  v13 = [MEMORY[0x1E696AD98] numberWithDouble:self->_edgeInsets.left];
  v27[0] = v13;
  v14 = [MEMORY[0x1E696AD98] numberWithDouble:self->_edgeInsets.top];
  v27[1] = v14;
  v15 = [MEMORY[0x1E696AD98] numberWithDouble:self->_edgeInsets.right];
  v27[2] = v15;
  v16 = [MEMORY[0x1E696AD98] numberWithDouble:self->_edgeInsets.bottom];
  v27[3] = v16;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:4];
  [dictionary setObject:v17 forKeyedSubscript:@"edgeInsets"];

  v18 = [MEMORY[0x1E696AD98] numberWithDouble:self->_viewZoomScale];
  [dictionary setObject:v18 forKeyedSubscript:@"viewZoomFactor"];

  v19 = [MEMORY[0x1E696AD98] numberWithInteger:self->_positionType];
  [dictionary setObject:v19 forKeyedSubscript:@"positionType"];

  mediaAndLinkURLs = self->_mediaAndLinkURLs;
  if (mediaAndLinkURLs)
  {
    [dictionary setObject:mediaAndLinkURLs forKeyedSubscript:@"mediaAndLinkURLs"];
  }

  hostsWhereActionHasApplied = self->_hostsWhereActionHasApplied;
  if (hostsWhereActionHasApplied)
  {
    [dictionary setObject:hostsWhereActionHasApplied forKeyedSubscript:@"hostsWhereActionHasApplied"];
  }

  if ([dictionary count])
  {
    v26 = 0;
    v22 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:dictionary requiringSecureCoding:1 error:&v26];
    v23 = v26;
    if (v23)
    {
      v24 = WBS_LOG_CHANNEL_PREFIXUserDefinedContentBlocker();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        [(WBSUserDefinedContentBlockerAction *)v23 extraAttributesData];
      }
    }
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

- (NSArray)selectorsForStyleSheetRules
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSArray count](self->_allSelectorsIncludingShadowHosts, "count")}];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v4 = self->_allSelectorsIncludingShadowHosts;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v21;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v21 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v20 + 1) + 8 * i);
        if ([v9 count] == 1)
        {
          v18 = 0u;
          v19 = 0u;
          v16 = 0u;
          v17 = 0u;
          lastObject = [v9 lastObject];
          v11 = [lastObject countByEnumeratingWithState:&v16 objects:v24 count:16];
          if (v11)
          {
            v12 = v11;
            v13 = *v17;
            do
            {
              for (j = 0; j != v12; ++j)
              {
                if (*v17 != v13)
                {
                  objc_enumerationMutation(lastObject);
                }

                [v3 addObject:*(*(&v16 + 1) + 8 * j)];
              }

              v12 = [lastObject countByEnumeratingWithState:&v16 objects:v24 count:16];
            }

            while (v12);
          }
        }
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v6);
  }

  return v3;
}

- (void)addHostWhereActionHasApplied:(id)applied selectors:(id)selectors
{
  appliedCopy = applied;
  selectorsCopy = selectors;
  hostsWhereActionHasApplied = self->_hostsWhereActionHasApplied;
  v8 = hostsWhereActionHasApplied;
  if (!hostsWhereActionHasApplied)
  {
    v8 = [MEMORY[0x1E695DFD8] set];
  }

  v9 = [v8 setByAddingObject:appliedCopy];
  v10 = self->_hostsWhereActionHasApplied;
  self->_hostsWhereActionHasApplied = v9;

  if (!hostsWhereActionHasApplied)
  {
  }

  if ([selectorsCopy count])
  {
    if (self->_allSelectorsIncludingShadowHosts)
    {
      allSelectorsIncludingShadowHosts = self->_allSelectorsIncludingShadowHosts;
    }

    else
    {
      allSelectorsIncludingShadowHosts = MEMORY[0x1E695E0F0];
    }

    v12 = [(NSArray *)allSelectorsIncludingShadowHosts arrayByAddingObject:selectorsCopy];
    v13 = self->_allSelectorsIncludingShadowHosts;
    self->_allSelectorsIncludingShadowHosts = v12;
  }
}

- (id)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  if (self->_global)
  {
    v5 = @"GLOBAL";
  }

  else
  {
    v5 = @"PER_SITE";
  }

  return [v3 stringWithFormat:@"<%@: %p {%@} sel=%@ renderTreeText=%@ imageAnalysisText=%@ searchableText=%@ screenReaderText=%@ (%@)>", v4, self, self->_typeString, self->_selector, self->_renderTreeText, self->_imageAnalysisText, self->_searchableText, self->_screenReaderText, v5];
}

- (CGRect)bounds
{
  x = self->_bounds.origin.x;
  y = self->_bounds.origin.y;
  width = self->_bounds.size.width;
  height = self->_bounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- ($01BB1521EC52D44A8E7628F5261DCEC8)edgeInsets
{
  left = self->_edgeInsets.left;
  top = self->_edgeInsets.top;
  right = self->_edgeInsets.right;
  bottom = self->_edgeInsets.bottom;
  result.var3 = bottom;
  result.var2 = right;
  result.var1 = top;
  result.var0 = left;
  return result;
}

- (void)_readExtraAttributesWithData:(void *)a1 .cold.1(void *a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = [a2 safari_privacyPreservingDescription];
  v5 = 138543362;
  v6 = v4;
  _os_log_error_impl(&dword_1BB6F3000, v3, OS_LOG_TYPE_ERROR, "Failed to unarchive extra data from database: %{public}@", &v5, 0xCu);
}

- (void)extraAttributesData
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  selfCopy = self;
  _os_log_error_impl(&dword_1BB6F3000, a2, OS_LOG_TYPE_ERROR, "Error when archiving extra attributes: %@", &v2, 0xCu);
}

@end