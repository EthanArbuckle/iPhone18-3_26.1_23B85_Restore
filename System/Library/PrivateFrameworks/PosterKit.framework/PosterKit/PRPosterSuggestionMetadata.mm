@interface PRPosterSuggestionMetadata
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (PRPosterSuggestionMetadata)initWithCoder:(id)coder;
- (PRPosterSuggestionMetadata)initWithLastModifiedDate:(id)date;
- (PRPosterSuggestionMetadata)initWithSuggestedGalleryItem:(id)item suggestedComplicationsByIdentifier:(id)identifier lastModifiedDate:(id)date;
- (id)metadataBySettingLastModifiedDateToNow;
- (unint64_t)hash;
- (void)appendDescriptionToFormatter:(id)formatter;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PRPosterSuggestionMetadata

- (PRPosterSuggestionMetadata)initWithSuggestedGalleryItem:(id)item suggestedComplicationsByIdentifier:(id)identifier lastModifiedDate:(id)date
{
  itemCopy = item;
  identifierCopy = identifier;
  v11 = [(PRPosterSuggestionMetadata *)self initWithLastModifiedDate:date];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_suggestedGalleryItem, item);
    v13 = [identifierCopy copy];
    suggestedComplicationsByIdentifier = v12->_suggestedComplicationsByIdentifier;
    v12->_suggestedComplicationsByIdentifier = v13;
  }

  return v12;
}

- (PRPosterSuggestionMetadata)initWithLastModifiedDate:(id)date
{
  dateCopy = date;
  v9.receiver = self;
  v9.super_class = PRPosterSuggestionMetadata;
  v5 = [(PRPosterSuggestionMetadata *)&v9 init];
  if (v5)
  {
    v6 = [dateCopy copy];
    lastModifiedDate = v5->_lastModifiedDate;
    v5->_lastModifiedDate = v6;
  }

  return v5;
}

- (id)metadataBySettingLastModifiedDateToNow
{
  v3 = [PRPosterSuggestionMetadata alloc];
  suggestedGalleryItem = [(PRPosterSuggestionMetadata *)self suggestedGalleryItem];
  suggestedComplicationsByIdentifier = [(PRPosterSuggestionMetadata *)self suggestedComplicationsByIdentifier];
  date = [MEMORY[0x1E695DF00] date];
  v7 = [(PRPosterSuggestionMetadata *)v3 initWithSuggestedGalleryItem:suggestedGalleryItem suggestedComplicationsByIdentifier:suggestedComplicationsByIdentifier lastModifiedDate:date];

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  v38 = *MEMORY[0x1E69E9840];
  equalCopy = equal;
  if (self == equalCopy)
  {
    v31 = 1;
  }

  else
  {
    v5 = objc_opt_self();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v7 = equalCopy;
      suggestedGalleryItem = [(PRPosterSuggestionMetadata *)self suggestedGalleryItem];
      suggestedGalleryItem2 = [(PRPosterSuggestionMetadata *)v7 suggestedGalleryItem];
      v10 = ATXFaceGalleryItemEqualObjects(suggestedGalleryItem, suggestedGalleryItem2);

      if (v10 && (v11 = MEMORY[0x1E695DFD8], -[PRPosterSuggestionMetadata suggestedComplicationsByIdentifier](self, "suggestedComplicationsByIdentifier"), v12 = objc_claimAutoreleasedReturnValue(), [v12 allKeys], v13 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v11, "setWithArray:", v13), v14 = objc_claimAutoreleasedReturnValue(), v15 = MEMORY[0x1E695DFD8], -[PRPosterSuggestionMetadata suggestedComplicationsByIdentifier](v7, "suggestedComplicationsByIdentifier"), v16 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v16, "allKeys"), v17 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v15, "setWithArray:", v17), v18 = objc_claimAutoreleasedReturnValue(), v19 = BSEqualObjects(), v18, v17, v16, v14, v13, v12, v19))
      {
        v35 = 0u;
        v36 = 0u;
        v33 = 0u;
        v34 = 0u;
        suggestedComplicationsByIdentifier = [(PRPosterSuggestionMetadata *)self suggestedComplicationsByIdentifier];
        allKeys = [suggestedComplicationsByIdentifier allKeys];

        v22 = [allKeys countByEnumeratingWithState:&v33 objects:v37 count:16];
        if (v22)
        {
          v23 = v22;
          v24 = *v34;
          while (2)
          {
            for (i = 0; i != v23; ++i)
            {
              if (*v34 != v24)
              {
                objc_enumerationMutation(allKeys);
              }

              v26 = *(*(&v33 + 1) + 8 * i);
              suggestedComplicationsByIdentifier2 = [(PRPosterSuggestionMetadata *)self suggestedComplicationsByIdentifier];
              v28 = [suggestedComplicationsByIdentifier2 objectForKey:v26];

              suggestedComplicationsByIdentifier3 = [(PRPosterSuggestionMetadata *)v7 suggestedComplicationsByIdentifier];
              v30 = [suggestedComplicationsByIdentifier3 objectForKey:v26];

              LODWORD(suggestedComplicationsByIdentifier3) = ATXComplicationEqualObjects(v28, v30);
              if (!suggestedComplicationsByIdentifier3)
              {
                v31 = 0;
                goto LABEL_18;
              }
            }

            v23 = [allKeys countByEnumeratingWithState:&v33 objects:v37 count:16];
            if (v23)
            {
              continue;
            }

            break;
          }
        }

        v31 = 1;
LABEL_18:
      }

      else
      {
        v31 = 0;
      }
    }

    else
    {
      v31 = 0;
    }
  }

  return v31;
}

- (unint64_t)hash
{
  suggestedGalleryItem = [(PRPosterSuggestionMetadata *)self suggestedGalleryItem];
  v4 = [suggestedGalleryItem hash];
  suggestedComplicationsByIdentifier = [(PRPosterSuggestionMetadata *)self suggestedComplicationsByIdentifier];
  v6 = [suggestedComplicationsByIdentifier hash];

  return v6 ^ v4;
}

- (NSString)description
{
  v3 = objc_alloc_init(MEMORY[0x1E698E688]);
  v7 = MEMORY[0x1E69E9820];
  v8 = 3221225472;
  v9 = __41__PRPosterSuggestionMetadata_description__block_invoke;
  v10 = &unk_1E7843070;
  selfCopy = self;
  v12 = v3;
  v4 = v3;
  [v4 appendProem:self block:&v7];
  v5 = [v4 description];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  suggestedGalleryItem = [(PRPosterSuggestionMetadata *)self suggestedGalleryItem];
  [coderCopy encodeObject:suggestedGalleryItem forKey:@"suggestedGalleryItem"];

  suggestedComplicationsByIdentifier = [(PRPosterSuggestionMetadata *)self suggestedComplicationsByIdentifier];
  [coderCopy encodeObject:suggestedComplicationsByIdentifier forKey:@"suggestedComplicationsByIdentifier"];

  lastModifiedDate = [(PRPosterSuggestionMetadata *)self lastModifiedDate];
  [coderCopy encodeObject:lastModifiedDate forKey:@"lastModifiedDate"];
}

- (PRPosterSuggestionMetadata)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"lastModifiedDate"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"suggestedGalleryItem"];
  v7 = MEMORY[0x1E695DFD8];
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = [v7 setWithObjects:{v8, v9, objc_opt_class(), 0}];
  v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"suggestedComplicationsByIdentifier"];

  v12 = MEMORY[0x1E695E0F8];
  if (v11)
  {
    v12 = v11;
  }

  v13 = v12;

  v14 = [(PRPosterSuggestionMetadata *)self initWithSuggestedGalleryItem:v6 suggestedComplicationsByIdentifier:v13 lastModifiedDate:v5];
  return v14;
}

- (void)appendDescriptionToFormatter:(id)formatter
{
  formatterCopy = formatter;
  suggestedGalleryItem = [(PRPosterSuggestionMetadata *)self suggestedGalleryItem];
  v5 = [formatterCopy appendObject:suggestedGalleryItem withName:@"suggestedGalleryItem"];

  suggestedComplicationsByIdentifier = [(PRPosterSuggestionMetadata *)self suggestedComplicationsByIdentifier];
  v7 = [formatterCopy appendObject:suggestedComplicationsByIdentifier withName:@"suggestedComplicationsByIdentifier"];

  lastModifiedDate = [(PRPosterSuggestionMetadata *)self lastModifiedDate];
  v9 = [formatterCopy appendObject:lastModifiedDate withName:@"lastModifiedDate"];
}

@end