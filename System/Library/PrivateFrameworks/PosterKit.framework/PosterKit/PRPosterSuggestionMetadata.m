@interface PRPosterSuggestionMetadata
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (PRPosterSuggestionMetadata)initWithCoder:(id)a3;
- (PRPosterSuggestionMetadata)initWithLastModifiedDate:(id)a3;
- (PRPosterSuggestionMetadata)initWithSuggestedGalleryItem:(id)a3 suggestedComplicationsByIdentifier:(id)a4 lastModifiedDate:(id)a5;
- (id)metadataBySettingLastModifiedDateToNow;
- (unint64_t)hash;
- (void)appendDescriptionToFormatter:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PRPosterSuggestionMetadata

- (PRPosterSuggestionMetadata)initWithSuggestedGalleryItem:(id)a3 suggestedComplicationsByIdentifier:(id)a4 lastModifiedDate:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = [(PRPosterSuggestionMetadata *)self initWithLastModifiedDate:a5];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_suggestedGalleryItem, a3);
    v13 = [v10 copy];
    suggestedComplicationsByIdentifier = v12->_suggestedComplicationsByIdentifier;
    v12->_suggestedComplicationsByIdentifier = v13;
  }

  return v12;
}

- (PRPosterSuggestionMetadata)initWithLastModifiedDate:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = PRPosterSuggestionMetadata;
  v5 = [(PRPosterSuggestionMetadata *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    lastModifiedDate = v5->_lastModifiedDate;
    v5->_lastModifiedDate = v6;
  }

  return v5;
}

- (id)metadataBySettingLastModifiedDateToNow
{
  v3 = [PRPosterSuggestionMetadata alloc];
  v4 = [(PRPosterSuggestionMetadata *)self suggestedGalleryItem];
  v5 = [(PRPosterSuggestionMetadata *)self suggestedComplicationsByIdentifier];
  v6 = [MEMORY[0x1E695DF00] date];
  v7 = [(PRPosterSuggestionMetadata *)v3 initWithSuggestedGalleryItem:v4 suggestedComplicationsByIdentifier:v5 lastModifiedDate:v6];

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v38 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (self == v4)
  {
    v31 = 1;
  }

  else
  {
    v5 = objc_opt_self();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v7 = v4;
      v8 = [(PRPosterSuggestionMetadata *)self suggestedGalleryItem];
      v9 = [(PRPosterSuggestionMetadata *)v7 suggestedGalleryItem];
      v10 = ATXFaceGalleryItemEqualObjects(v8, v9);

      if (v10 && (v11 = MEMORY[0x1E695DFD8], -[PRPosterSuggestionMetadata suggestedComplicationsByIdentifier](self, "suggestedComplicationsByIdentifier"), v12 = objc_claimAutoreleasedReturnValue(), [v12 allKeys], v13 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v11, "setWithArray:", v13), v14 = objc_claimAutoreleasedReturnValue(), v15 = MEMORY[0x1E695DFD8], -[PRPosterSuggestionMetadata suggestedComplicationsByIdentifier](v7, "suggestedComplicationsByIdentifier"), v16 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v16, "allKeys"), v17 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v15, "setWithArray:", v17), v18 = objc_claimAutoreleasedReturnValue(), v19 = BSEqualObjects(), v18, v17, v16, v14, v13, v12, v19))
      {
        v35 = 0u;
        v36 = 0u;
        v33 = 0u;
        v34 = 0u;
        v20 = [(PRPosterSuggestionMetadata *)self suggestedComplicationsByIdentifier];
        v21 = [v20 allKeys];

        v22 = [v21 countByEnumeratingWithState:&v33 objects:v37 count:16];
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
                objc_enumerationMutation(v21);
              }

              v26 = *(*(&v33 + 1) + 8 * i);
              v27 = [(PRPosterSuggestionMetadata *)self suggestedComplicationsByIdentifier];
              v28 = [v27 objectForKey:v26];

              v29 = [(PRPosterSuggestionMetadata *)v7 suggestedComplicationsByIdentifier];
              v30 = [v29 objectForKey:v26];

              LODWORD(v29) = ATXComplicationEqualObjects(v28, v30);
              if (!v29)
              {
                v31 = 0;
                goto LABEL_18;
              }
            }

            v23 = [v21 countByEnumeratingWithState:&v33 objects:v37 count:16];
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
  v3 = [(PRPosterSuggestionMetadata *)self suggestedGalleryItem];
  v4 = [v3 hash];
  v5 = [(PRPosterSuggestionMetadata *)self suggestedComplicationsByIdentifier];
  v6 = [v5 hash];

  return v6 ^ v4;
}

- (NSString)description
{
  v3 = objc_alloc_init(MEMORY[0x1E698E688]);
  v7 = MEMORY[0x1E69E9820];
  v8 = 3221225472;
  v9 = __41__PRPosterSuggestionMetadata_description__block_invoke;
  v10 = &unk_1E7843070;
  v11 = self;
  v12 = v3;
  v4 = v3;
  [v4 appendProem:self block:&v7];
  v5 = [v4 description];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(PRPosterSuggestionMetadata *)self suggestedGalleryItem];
  [v4 encodeObject:v5 forKey:@"suggestedGalleryItem"];

  v6 = [(PRPosterSuggestionMetadata *)self suggestedComplicationsByIdentifier];
  [v4 encodeObject:v6 forKey:@"suggestedComplicationsByIdentifier"];

  v7 = [(PRPosterSuggestionMetadata *)self lastModifiedDate];
  [v4 encodeObject:v7 forKey:@"lastModifiedDate"];
}

- (PRPosterSuggestionMetadata)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"lastModifiedDate"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"suggestedGalleryItem"];
  v7 = MEMORY[0x1E695DFD8];
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = [v7 setWithObjects:{v8, v9, objc_opt_class(), 0}];
  v11 = [v4 decodeObjectOfClasses:v10 forKey:@"suggestedComplicationsByIdentifier"];

  v12 = MEMORY[0x1E695E0F8];
  if (v11)
  {
    v12 = v11;
  }

  v13 = v12;

  v14 = [(PRPosterSuggestionMetadata *)self initWithSuggestedGalleryItem:v6 suggestedComplicationsByIdentifier:v13 lastModifiedDate:v5];
  return v14;
}

- (void)appendDescriptionToFormatter:(id)a3
{
  v10 = a3;
  v4 = [(PRPosterSuggestionMetadata *)self suggestedGalleryItem];
  v5 = [v10 appendObject:v4 withName:@"suggestedGalleryItem"];

  v6 = [(PRPosterSuggestionMetadata *)self suggestedComplicationsByIdentifier];
  v7 = [v10 appendObject:v6 withName:@"suggestedComplicationsByIdentifier"];

  v8 = [(PRPosterSuggestionMetadata *)self lastModifiedDate];
  v9 = [v10 appendObject:v8 withName:@"lastModifiedDate"];
}

@end