@interface PLRevGeoCompoundNameInfo
+ (id)_localizedNameForName:(id)name;
- (BOOL)isEqual:(id)equal;
- (PLRevGeoCompoundNameInfo)initWithCoder:(id)coder;
- (PLRevGeoCompoundNameInfo)initWithNamePrefix:(id)prefix nameSuffix:(id)suffix sortedNames:(id)names isContinuation:(BOOL)continuation suffixWhenPrefixOnly:(BOOL)only;
- (id)description;
- (id)localizedSortedNames;
- (id)localizedTitleForNameInfo;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PLRevGeoCompoundNameInfo

- (PLRevGeoCompoundNameInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"namePrefix"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"nameSuffix"];
  v7 = MEMORY[0x1E695DFD8];
  v8 = objc_opt_class();
  v9 = [v7 setWithObjects:{v8, objc_opt_class(), 0}];
  v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"sortedNames"];

  v11 = [coderCopy decodeBoolForKey:@"isContinuation"];
  v12 = [coderCopy decodeBoolForKey:@"suffixWhenPrefixOnly"];

  v13 = [(PLRevGeoCompoundNameInfo *)self initWithNamePrefix:v5 nameSuffix:v6 sortedNames:v10 isContinuation:v11 suffixWhenPrefixOnly:v12];
  return v13;
}

- (void)encodeWithCoder:(id)coder
{
  namePrefix = self->_namePrefix;
  coderCopy = coder;
  [coderCopy encodeObject:namePrefix forKey:@"namePrefix"];
  [coderCopy encodeObject:self->_nameSuffix forKey:@"nameSuffix"];
  [coderCopy encodeObject:self->_sortedNames forKey:@"sortedNames"];
  [coderCopy encodeBool:self->_isContinuation forKey:@"isContinuation"];
  [coderCopy encodeBool:self->_suffixWhenPrefixOnly forKey:@"suffixWhenPrefixOnly"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v6 = 1;
    goto LABEL_15;
  }

  v5 = objc_opt_class();
  if (v5 == objc_opt_class())
  {
    v7 = equalCopy;
    isContinuation = self->_isContinuation;
    if (isContinuation != [(PLRevGeoCompoundNameInfo *)v7 isContinuation])
    {
      goto LABEL_13;
    }

    suffixWhenPrefixOnly = self->_suffixWhenPrefixOnly;
    if (suffixWhenPrefixOnly != [(PLRevGeoCompoundNameInfo *)v7 suffixWhenPrefixOnly])
    {
      goto LABEL_13;
    }

    namePrefix = self->_namePrefix;
    namePrefix = [(PLRevGeoCompoundNameInfo *)v7 namePrefix];
    v12 = namePrefix;
    if (namePrefix == namePrefix)
    {
    }

    else
    {
      v13 = self->_namePrefix;
      namePrefix2 = [(PLRevGeoCompoundNameInfo *)v7 namePrefix];
      LODWORD(v13) = [(NSString *)v13 isEqualToString:namePrefix2];

      if (!v13)
      {
        goto LABEL_13;
      }
    }

    nameSuffix = self->_nameSuffix;
    nameSuffix = [(PLRevGeoCompoundNameInfo *)v7 nameSuffix];
    v17 = nameSuffix;
    if (nameSuffix == nameSuffix)
    {
    }

    else
    {
      v18 = self->_nameSuffix;
      nameSuffix2 = [(PLRevGeoCompoundNameInfo *)v7 nameSuffix];
      LODWORD(v18) = [(NSString *)v18 isEqualToString:nameSuffix2];

      if (!v18)
      {
LABEL_13:
        v6 = 0;
LABEL_14:

        goto LABEL_15;
      }
    }

    sortedNames = self->_sortedNames;
    sortedNames = [(PLRevGeoCompoundNameInfo *)v7 sortedNames];
    if (sortedNames == sortedNames)
    {
      v6 = 1;
    }

    else
    {
      v23 = self->_sortedNames;
      sortedNames2 = [(PLRevGeoCompoundNameInfo *)v7 sortedNames];
      v6 = [(NSArray *)v23 isEqualToArray:sortedNames2];
    }

    goto LABEL_14;
  }

  v6 = 0;
LABEL_15:

  return v6;
}

- (id)localizedTitleForNameInfo
{
  v25 = *MEMORY[0x1E69E9840];
  localizedSortedNames = [(PLRevGeoCompoundNameInfo *)self localizedSortedNames];
  if ([localizedSortedNames count])
  {
    v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v19 = localizedSortedNames;
    v4 = localizedSortedNames;
    v5 = [v4 countByEnumeratingWithState:&v20 objects:v24 count:16];
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
          v10 = [objc_opt_class() _localizedNameForName:v9];
          firstObject = [v4 firstObject];

          if (v9 != firstObject)
          {
            lastObject = [v4 lastObject];

            v13 = @"MOMENT_TITLE_LIST_MID_SEPARATOR_FORMAT";
            if (v9 == lastObject)
            {
              if ([v4 count] == 2)
              {
                v13 = @"MOMENT_TITLE_LIST_END_SEPARATOR_FORMAT_1";
              }

              else
              {
                v13 = @"MOMENT_TITLE_LIST_END_SEPARATOR_FORMAT_N";
              }
            }

            v14 = PLMomentsLocalizedFrameworkString(v13);
            v18 = v10;
            v15 = PFStringWithValidatedFormat();

            v10 = v15;
          }

          [v3 appendString:{v10, v18}];
        }

        v6 = [v4 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v6);
    }

    v16 = [v3 copy];
    localizedSortedNames = v19;
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (id)localizedSortedNames
{
  v35 = *MEMORY[0x1E69E9840];
  if ([(NSString *)self->_namePrefix length]|| [(NSString *)self->_nameSuffix length]|| self->_isContinuation)
  {
    v3 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSArray count](self->_sortedNames, "count")}];
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    obj = self->_sortedNames;
    v4 = [(NSArray *)obj countByEnumeratingWithState:&v30 objects:v34 count:16];
    if (!v4)
    {
      goto LABEL_47;
    }

    v5 = v4;
    v6 = 0;
    v7 = *v31;
    v28 = v3;
    while (1)
    {
      v8 = 0;
      do
      {
        if (*v31 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v30 + 1) + 8 * v8);
        v10 = [objc_opt_class() _localizedNameForName:v9];
        v11 = v10;
        if (v6)
        {
          v6 = 1;
        }

        else if (v10 && self->_nameSuffix)
        {
          v6 = [(NSString *)v10 containsString:?];
        }

        else
        {
          v6 = 0;
        }

        v12 = [(NSArray *)self->_sortedNames firstObject:v25];
        if (v9 == v12)
        {
          if ([(NSString *)self->_namePrefix length])
          {
          }

          else
          {
            isContinuation = self->_isContinuation;

            if (!isContinuation)
            {
              goto LABEL_17;
            }
          }

          v12 = self->_namePrefix;
          if ([(NSString *)v12 length])
          {
            if ([(NSArray *)self->_sortedNames count]== 1 && [(NSString *)self->_namePrefix rangeOfString:v9]!= 0x7FFFFFFFFFFFFFFFLL)
            {
              v18 = v12 && self->_nameSuffix && [(NSString *)v12 containsString:?];
              if (self->_suffixWhenPrefixOnly && [(NSString *)self->_nameSuffix length]!= 0 && !v18)
              {
                v19 = PLMomentsLocalizedFrameworkString(@"MOMENT_TITLE_SUFFIX_FORMAT");
                v26 = v12;
                nameSuffix = self->_nameSuffix;
                v20 = PFStringWithValidatedFormat();

                v12 = v20;
                v3 = v28;
              }

              v12 = v12;
              v17 = v12;
            }

            else
            {
              v16 = PLMomentsLocalizedFrameworkString(@"MOMENT_TITLE_PREFIX_FORMAT");
              v26 = v12;
              nameSuffix = v11;
              v17 = PFStringWithValidatedFormat();

              v11 = v16;
              v3 = v28;
            }

            v11 = v17;
          }

          if (self->_isContinuation)
          {
            v21 = PLMomentsLocalizedFrameworkString(@"MOMENT_TITLE_CONTINUATION_FORMAT");
            v26 = v11;
            v22 = PFStringWithValidatedFormat();

            v11 = v22;
            v3 = v28;
          }
        }

LABEL_17:
        lastObject = [(NSArray *)self->_sortedNames lastObject];
        if (v9 != lastObject || ![(NSString *)self->_nameSuffix length]|| self->_suffixWhenPrefixOnly && [(NSString *)self->_namePrefix length])
        {
          goto LABEL_18;
        }

        if ((v6 & 1) == 0)
        {
          lastObject = PLMomentsLocalizedFrameworkString(@"MOMENT_TITLE_SUFFIX_FORMAT");
          v25 = v11;
          nameSuffix = self->_nameSuffix;
          v14 = PFStringWithValidatedFormat();

          v11 = v14;
LABEL_18:
        }

        if (v11)
        {
          [(NSArray *)v3 addObject:v11];
        }

        ++v8;
      }

      while (v5 != v8);
      v23 = [(NSArray *)obj countByEnumeratingWithState:&v30 objects:v34 count:16];
      v5 = v23;
      if (!v23)
      {
LABEL_47:

        goto LABEL_48;
      }
    }
  }

  v3 = self->_sortedNames;
LABEL_48:

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v7.receiver = self;
  v7.super_class = PLRevGeoCompoundNameInfo;
  v4 = [(PLRevGeoCompoundNameInfo *)&v7 description];
  v5 = [v3 stringWithFormat:@"%@ namePrefix: %@, sortedNames: %@, nameSuffix: %@, isContinuation: %d, suffixWhenPrefixOnly: %d", v4, self->_namePrefix, self->_sortedNames, self->_nameSuffix, self->_isContinuation, self->_suffixWhenPrefixOnly];

  return v5;
}

- (PLRevGeoCompoundNameInfo)initWithNamePrefix:(id)prefix nameSuffix:(id)suffix sortedNames:(id)names isContinuation:(BOOL)continuation suffixWhenPrefixOnly:(BOOL)only
{
  prefixCopy = prefix;
  suffixCopy = suffix;
  namesCopy = names;
  v19.receiver = self;
  v19.super_class = PLRevGeoCompoundNameInfo;
  v16 = [(PLRevGeoCompoundNameInfo *)&v19 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_namePrefix, prefix);
    objc_storeStrong(&v17->_nameSuffix, suffix);
    objc_storeStrong(&v17->_sortedNames, names);
    v17->_isContinuation = continuation;
    v17->_suffixWhenPrefixOnly = only;
  }

  return v17;
}

+ (id)_localizedNameForName:(id)name
{
  nameCopy = name;
  if ([nameCopy isEqualToString:@"_$!<Home>!$_"])
  {
    v4 = PLMomentsLocalizedFrameworkString(@"MOMENT_HOME");
  }

  else
  {
    v4 = nameCopy;
  }

  v5 = v4;

  return v5;
}

@end