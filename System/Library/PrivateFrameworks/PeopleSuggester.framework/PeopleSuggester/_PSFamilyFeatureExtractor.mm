@interface _PSFamilyFeatureExtractor
- (_PSFamilyFeatureExtractor)init;
- (_PSFamilyFeatureExtractor)initWith:(id)with featureSet:(id)set;
- (_PSFamilyFeatureExtractor)initWithActivity:(id)activity;
- (id)_featureInputForContact:(id)contact;
- (id)featureInputForContact:(id)contact;
- (id)featureInputsForContacts:(id)contacts;
@end

@implementation _PSFamilyFeatureExtractor

- (_PSFamilyFeatureExtractor)initWithActivity:(id)activity
{
  v4 = MEMORY[0x1E6997898];
  activityCopy = activity;
  v6 = [[v4 alloc] initWithActivity:activityCopy];

  v7 = +[_PSFamilyUtilities featureSet];
  v8 = [(_PSFamilyFeatureExtractor *)self initWith:v6 featureSet:v7];

  return v8;
}

- (_PSFamilyFeatureExtractor)init
{
  v3 = [objc_alloc(MEMORY[0x1E6997898]) initWithActivity:0];
  v4 = +[_PSFamilyUtilities featureSet];
  v5 = [(_PSFamilyFeatureExtractor *)self initWith:v3 featureSet:v4];

  return v5;
}

- (_PSFamilyFeatureExtractor)initWith:(id)with featureSet:(id)set
{
  withCopy = with;
  setCopy = set;
  v17.receiver = self;
  v17.super_class = _PSFamilyFeatureExtractor;
  v9 = [(_PSFamilyFeatureExtractor *)&v17 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_task, with);
    objc_storeStrong(&v10->_featureSet, set);
    v11 = objc_alloc(MEMORY[0x1E69C5D58]);
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __49___PSFamilyFeatureExtractor_initWith_featureSet___block_invoke;
    v15[3] = &unk_1E7C24F38;
    v16 = withCopy;
    v12 = [v11 initWithBlock:v15];
    reusableEventDictsState = v10->_reusableEventDictsState;
    v10->_reusableEventDictsState = v12;
  }

  return v10;
}

- (id)_featureInputForContact:(id)contact
{
  v29 = *MEMORY[0x1E69E9840];
  contactCopy = contact;
  result = [(_PASLazyResult *)self->_reusableEventDictsState result];
  task = [(_PSFamilyFeatureExtractor *)self task];
  v7 = [task eventDictForContact:contactCopy usingState:result];

  if (!v7)
  {
    v17 = 0;
    goto LABEL_22;
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  featureSet = [(_PSFamilyFeatureExtractor *)self featureSet];
  v9 = [featureSet countByEnumeratingWithState:&v22 objects:v28 count:16];
  if (v9)
  {
    v10 = v9;
    v20 = result;
    v21 = contactCopy;
    v11 = 0;
    v12 = *v23;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v23 != v12)
        {
          objc_enumerationMutation(featureSet);
        }

        v14 = *(*(&v22 + 1) + 8 * i);
        v15 = [v7 objectForKeyedSubscript:{v14, v20, v21}];

        if (!v15)
        {
          v16 = +[_PSLogging familyRecommenderChannel];
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138543362;
            v27 = v14;
            _os_log_debug_impl(&dword_1B5ED1000, v16, OS_LOG_TYPE_DEBUG, "feature %{public}@ not found in feature set", buf, 0xCu);
          }

          if (!v11)
          {
            v11 = [v7 mutableCopy];
          }

          [v11 setObject:&unk_1F2D8B3B8 forKeyedSubscript:v14];
        }
      }

      v10 = [featureSet countByEnumeratingWithState:&v22 objects:v28 count:16];
    }

    while (v10);

    if (!v11)
    {
      result = v20;
      contactCopy = v21;
      goto LABEL_21;
    }

    featureSet = v7;
    v7 = [objc_alloc(MEMORY[0x1E695DF20]) initWithDictionary:v11];
    result = v20;
    contactCopy = v21;
  }

  else
  {
    v11 = 0;
  }

LABEL_21:
  v17 = v7;

LABEL_22:
  v18 = *MEMORY[0x1E69E9840];

  return v17;
}

- (id)featureInputForContact:(id)contact
{
  v3 = [(_PSFamilyFeatureExtractor *)self _featureInputForContact:contact];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = MEMORY[0x1E695E0F8];
  }

  v6 = v5;

  return v5;
}

- (id)featureInputsForContacts:(id)contacts
{
  v23 = *MEMORY[0x1E69E9840];
  contactsCopy = contacts;
  v5 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(contactsCopy, "count")}];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = contactsCopy;
  v7 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v19;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v18 + 1) + 8 * i);
        v12 = objc_autoreleasePoolPush();
        v13 = [(_PSFamilyFeatureExtractor *)self _featureInputForContact:v11, v18];
        identifier = [v11 identifier];
        [v5 setObject:v13 forKeyedSubscript:identifier];

        objc_autoreleasePoolPop(v12);
      }

      v8 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v8);
  }

  v15 = [v5 copy];
  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

@end