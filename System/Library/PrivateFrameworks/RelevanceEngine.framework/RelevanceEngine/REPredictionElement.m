@interface REPredictionElement
+ (id)predictionElementFromElement:(id)a3;
+ (id)predictionElementWithIdentifier:(id)a3 relevanceProviders:(id)a4 bundleIdentifier:(id)a5;
- (REPredictionElement)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation REPredictionElement

+ (id)predictionElementFromElement:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v5 = [v3 identifier];
  v6 = *(v4 + 8);
  *(v4 + 8) = v5;

  *(v4 + 16) = [v3 privacyBehavior];
  v7 = [v3 relevanceProviders];
  v8 = *(v4 + 24);
  *(v4 + 24) = v7;

  v9 = [v3 bundleIdentifier];
  v10 = *(v4 + 32);
  *(v4 + 32) = v9;

  v11 = [v3 applicationBundleIdentifier];
  v12 = *(v4 + 40);
  *(v4 + 40) = v11;

  v13 = [v3 content];

  v14 = [v13 objectForKey:@"REContentInteractionKey"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v15 = v14;
  }

  else
  {
    v15 = @"REElementInteractionDefault";
  }

  objc_storeStrong((v4 + 48), v15);

  return v4;
}

- (REPredictionElement)initWithCoder:(id)a3
{
  v35 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v33.receiver = self;
  v33.super_class = REPredictionElement;
  v5 = [(REPredictionElement *)&v33 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bundleIdentifier"];
    bundleIdentifier = v5->_bundleIdentifier;
    v5->_bundleIdentifier = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"applicationBundleIdentifier"];
    applicationBundleIdentifier = v5->_applicationBundleIdentifier;
    v5->_applicationBundleIdentifier = v10;

    objc_storeStrong(&v5->_interaction, @"REElementInteractionDefault");
    v12 = MEMORY[0x277CBEB98];
    v13 = objc_opt_class();
    v14 = objc_opt_class();
    v15 = objc_opt_class();
    v16 = [v12 setWithObjects:{v13, v14, v15, objc_opt_class(), 0}];
    v17 = [v4 decodeObjectOfClasses:v16 forKey:@"relevanceProviders"];
    v18 = [MEMORY[0x277CBEB18] array];
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v19 = v17;
    v20 = [v19 countByEnumeratingWithState:&v29 objects:v34 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v30;
      do
      {
        v23 = 0;
        do
        {
          if (*v30 != v22)
          {
            objc_enumerationMutation(v19);
          }

          v24 = [[RECustomRelevanceProvider alloc] initWithDictionary:*(*(&v29 + 1) + 8 * v23)];
          [v18 addObject:v24];

          ++v23;
        }

        while (v21 != v23);
        v21 = [v19 countByEnumeratingWithState:&v29 objects:v34 count:16];
      }

      while (v21);
    }

    v25 = [v18 copy];
    relevanceProviders = v5->_relevanceProviders;
    v5->_relevanceProviders = v25;
  }

  v27 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  [v4 encodeObject:self->_identifier forKey:@"identifier"];
  [v4 encodeObject:self->_bundleIdentifier forKey:@"bundleIdentifier"];
  [v4 encodeObject:self->_applicationBundleIdentifier forKey:@"applicationBundleIdentifier"];
  v5 = [MEMORY[0x277CBEB18] array];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = self->_relevanceProviders;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      v10 = 0;
      do
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v14 + 1) + 8 * v10) dictionaryEncoding];
        [v5 addObject:v11];

        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSArray *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v12 = [v5 copy];
  [v4 encodeObject:v12 forKey:@"relevanceProviders"];

  v13 = *MEMORY[0x277D85DE8];
}

+ (id)predictionElementWithIdentifier:(id)a3 relevanceProviders:(id)a4 bundleIdentifier:(id)a5
{
  v28 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = objc_opt_new();
  objc_storeStrong((v11 + 8), a3);
  objc_storeStrong((v11 + 32), a5);
  objc_storeStrong((v11 + 48), @"REElementInteractionDefault");
  v12 = [MEMORY[0x277CBEB18] array];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v13 = v9;
  v14 = [v13 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v24;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v24 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v23 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v12 addObject:{v18, v23}];
        }
      }

      v15 = [v13 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v15);
  }

  v19 = [v12 copy];
  v20 = *(v11 + 24);
  *(v11 + 24) = v19;

  v21 = *MEMORY[0x277D85DE8];

  return v11;
}

@end