@interface UIFontPickerViewControllerConfiguration
+ (NSPredicate)filterPredicateForFilteredLanguages:(NSArray *)filteredLanguages;
- (BOOL)_matchesLanguageList:(id)a3;
- (BOOL)isEqual:(id)a3;
- (UIFontPickerViewControllerConfiguration)initWithBSXPCCoder:(id)a3;
- (UIFontPickerViewControllerConfiguration)initWithCoder:(id)a3;
- (id)_serializedPredicate;
- (id)copyWithZone:(_NSZone *)a3;
- (id)debugDescriptionWithMultilinePrefix:(id)a3;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (void)_setPredicateFromData:(id)a3;
- (void)encodeWithBSXPCCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setFilteredLanguagesPredicate:(NSPredicate *)filteredLanguagesPredicate;
@end

@implementation UIFontPickerViewControllerConfiguration

- (BOOL)_matchesLanguageList:(id)a3
{
  if (a3)
  {
    v4 = sub_18A4A7548();
  }

  else
  {
    v4 = 0;
  }

  v5 = self;
  v6 = sub_188FB9110(v4);

  return v6 & 1;
}

- (id)_serializedPredicate
{
  v2 = self;
  v3 = sub_188FB9458();
  v5 = v4;

  if (v5 >> 60 == 15)
  {
    v6 = 0;
  }

  else
  {
    v7 = sub_18A4A2918();
    sub_188DBF840(v3, v5);
    v6 = v7;
  }

  return v6;
}

- (void)_setPredicateFromData:(id)a3
{
  v3 = a3;
  if (a3)
  {
    v4 = self;
    v5 = v3;
    v3 = sub_18A4A2928();
    v7 = v6;
  }

  else
  {
    v8 = self;
    v7 = 0xF000000000000000;
  }

  sub_188FB970C(v3, v7);
  sub_188DBF840(v3, v7);
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  [v5 setIncludeFaces:{-[UIFontPickerViewControllerConfiguration includeFaces](self, "includeFaces")}];
  [v5 setDisplayUsingSystemFont:{-[UIFontPickerViewControllerConfiguration displayUsingSystemFont](self, "displayUsingSystemFont")}];
  [v5 setFilteredTraits:{-[UIFontPickerViewControllerConfiguration filteredTraits](self, "filteredTraits")}];
  v6 = [(UIFontPickerViewControllerConfiguration *)self filteredLanguagesPredicate];
  v7 = [v6 copyWithZone:a3];
  [v5 setFilteredLanguagesPredicate:v7];

  v8 = [(UIFontPickerViewControllerConfiguration *)self _allowedLanguages];
  v9 = [v8 copyWithZone:a3];
  [v5 set_allowedLanguages:v9];

  v10 = [(UIFontPickerViewControllerConfiguration *)self _swiftPredicate];
  v11 = [v10 copyWithZone:a3];
  [v5 set_swiftPredicate:v11];

  [v5 _setHideSearchBar:{-[UIFontPickerViewControllerConfiguration _hideSearchBar](self, "_hideSearchBar")}];
  v12 = [(UIFontPickerViewControllerConfiguration *)self _tintColor];
  v13 = [v12 copyWithZone:a3];
  [v5 _setTintColor:v13];

  [v5 set_includeDefaultFont:{-[UIFontPickerViewControllerConfiguration _includeDefaultFont](self, "_includeDefaultFont")}];
  v14 = [(UIFontPickerViewControllerConfiguration *)self _filterFamilyName];
  [v5 set_filterFamilyName:v14];

  v15 = [(UIFontPickerViewControllerConfiguration *)self _filterFontNames];
  [v5 set_filterFontNames:v15];

  [v5 set_showsSectionIndexBar:{-[UIFontPickerViewControllerConfiguration _showsSectionIndexBar](self, "_showsSectionIndexBar")}];
  v16 = [(UIFontPickerViewControllerConfiguration *)self _clientFontContextEndpoint];
  [v5 set_clientFontContextEndpoint:v16];

  v17 = [(UIFontPickerViewControllerConfiguration *)self _clientRecentFonts];
  [v5 _setClientRecentFonts:v17];

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  if (v5 == self)
  {
    v14 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
      v7 = [(UIFontPickerViewControllerConfiguration *)self includeFaces];
      if (v7 != [(UIFontPickerViewControllerConfiguration *)v6 includeFaces]|| (v8 = [(UIFontPickerViewControllerConfiguration *)self displayUsingSystemFont], v8 != [(UIFontPickerViewControllerConfiguration *)v6 displayUsingSystemFont]) || (v9 = [(UIFontPickerViewControllerConfiguration *)self filteredTraits], v9 != [(UIFontPickerViewControllerConfiguration *)v6 filteredTraits]))
      {
        v14 = 0;
LABEL_13:

        goto LABEL_14;
      }

      v10 = [(UIFontPickerViewControllerConfiguration *)self filteredLanguagesPredicate];
      if (v10 || ([(UIFontPickerViewControllerConfiguration *)v6 filteredLanguagesPredicate], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v11 = [(UIFontPickerViewControllerConfiguration *)self filteredLanguagesPredicate];
        v12 = [(UIFontPickerViewControllerConfiguration *)v6 filteredLanguagesPredicate];
        if (![v11 isEqual:v12])
        {
          v14 = 0;
          goto LABEL_52;
        }

        v79 = v12;
        v80 = v11;
        v13 = 1;
      }

      else
      {
        v13 = 0;
      }

      v16 = [(UIFontPickerViewControllerConfiguration *)self _allowedLanguages];
      if (v16 || ([(UIFontPickerViewControllerConfiguration *)v6 _allowedLanguages], (v78 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v17 = v16;
        v18 = [(UIFontPickerViewControllerConfiguration *)self _allowedLanguages];
        v82 = [(UIFontPickerViewControllerConfiguration *)v6 _allowedLanguages];
        v83 = v18;
        if (![v18 isEqualToArray:v82])
        {
          v14 = 0;
          v16 = v17;
          goto LABEL_47;
        }

        v16 = v17;
        v19 = 1;
      }

      else
      {
        v78 = 0;
        v19 = 0;
      }

      v81 = [(UIFontPickerViewControllerConfiguration *)self _swiftPredicate];
      if (!v81)
      {
        v76 = [(UIFontPickerViewControllerConfiguration *)v6 _swiftPredicate];
        if (!v76)
        {
          v22 = v13;
          v23 = v3;
          v76 = 0;
          v77 = 0;
LABEL_32:
          v25 = [(UIFontPickerViewControllerConfiguration *)self _hideSearchBar];
          if (v25 != [(UIFontPickerViewControllerConfiguration *)v6 _hideSearchBar])
          {
            v14 = 0;
            v3 = v23;
            v13 = v22;
            goto LABEL_42;
          }

          [(UIFontPickerViewControllerConfiguration *)self _tintColor];
          v73 = v3 = v23;
          if (v73 || ([(UIFontPickerViewControllerConfiguration *)v6 _tintColor], (v70 = objc_claimAutoreleasedReturnValue()) != 0))
          {
            v26 = [(UIFontPickerViewControllerConfiguration *)self _tintColor];
            v27 = [(UIFontPickerViewControllerConfiguration *)v6 _tintColor];
            if (([v26 isEqual:v27] & 1) == 0)
            {

              v13 = v22;
              if (v73)
              {
              }

              else
              {
              }

              v14 = 0;
LABEL_42:
              if ((v77 & 1) == 0)
              {
                goto LABEL_44;
              }

              goto LABEL_43;
            }

            v71 = v27;
            v69 = v26;
            v23 = v3;
            v72 = 1;
          }

          else
          {
            v70 = 0;
            v72 = 0;
          }

          v29 = [(UIFontPickerViewControllerConfiguration *)self _includeDefaultFont];
          if (v29 != [(UIFontPickerViewControllerConfiguration *)v6 _includeDefaultFont])
          {
            v14 = 0;
            v3 = v23;
            v13 = v22;
LABEL_59:
            v30 = v73;
            goto LABEL_60;
          }

          [(UIFontPickerViewControllerConfiguration *)self _filterFamilyName];
          v68 = v3 = v23;
          if (v68 || ([(UIFontPickerViewControllerConfiguration *)v6 _filterFamilyName], (v67 = objc_claimAutoreleasedReturnValue()) != 0))
          {
            v32 = [(UIFontPickerViewControllerConfiguration *)self _filterFamilyName];
            v13 = v22;
            if (!v32)
            {
              v14 = 0;
              v37 = v78;
              v30 = v73;
              v31 = v71;
              goto LABEL_102;
            }

            v66 = v32;
            v33 = [(UIFontPickerViewControllerConfiguration *)v6 _filterFamilyName];
            v30 = v73;
            if (!v33)
            {

              v38 = v68;
              if (!v68)
              {
                v38 = v67;
              }

              v14 = 0;
LABEL_60:
              v31 = v71;
              if ((v72 & 1) == 0)
              {
                goto LABEL_62;
              }

              goto LABEL_61;
            }

            v64 = v33;
            v34 = [(UIFontPickerViewControllerConfiguration *)self _filterFamilyName];
            v35 = [(UIFontPickerViewControllerConfiguration *)v6 _filterFamilyName];
            v63 = v34;
            if (([v34 isEqualToString:v35] & 1) == 0)
            {

              v39 = v68;
              if (!v68)
              {
                v39 = v67;
              }

              v14 = 0;
              v31 = v71;
              v30 = v73;
              if ((v72 & 1) == 0)
              {
LABEL_62:
                if (!v30)
                {
                }

                if (!v77)
                {
LABEL_44:
                  v28 = v81;
                  if (!v81)
                  {

                    v28 = 0;
                  }

                  if (!v19)
                  {
                    goto LABEL_48;
                  }

                  goto LABEL_47;
                }

LABEL_43:

                goto LABEL_44;
              }

LABEL_61:

              goto LABEL_62;
            }

            v60 = v35;
            v36 = 1;
          }

          else
          {
            v67 = 0;
            v36 = 0;
            v13 = v22;
          }

          v30 = v73;
          v65 = [(UIFontPickerViewControllerConfiguration *)self _filterFontNames];
          if (v65 || ([(UIFontPickerViewControllerConfiguration *)v6 _filterFontNames], (v56 = objc_claimAutoreleasedReturnValue()) != 0))
          {
            v61 = [(UIFontPickerViewControllerConfiguration *)self _filterFontNames];
            if (!v61)
            {
              v62 = v36;
              v14 = 0;
LABEL_98:
              v31 = v71;
              if (!v65)
              {
              }

              if ((v62 & 1) == 0)
              {
LABEL_103:
                v45 = v68;
                if (!v68)
                {

                  v45 = 0;
                }

                if (!v72)
                {
                  goto LABEL_62;
                }

                goto LABEL_61;
              }

              v37 = v78;
LABEL_102:
              v78 = v37;
              goto LABEL_103;
            }

            v40 = [(UIFontPickerViewControllerConfiguration *)v6 _filterFontNames];
            if (!v40)
            {

              if (v65)
              {
                v42 = v65;
              }

              else
              {
                v42 = v56;
              }

              if (v36)
              {
              }

              if (!v68)
              {
              }

              v14 = 0;
              goto LABEL_59;
            }

            v30 = v40;
            v62 = v36;
            v58 = v19;
            v57 = v16;
            v59 = v3;
            v41 = [(UIFontPickerViewControllerConfiguration *)self _filterFontNames];
            v36 = [(UIFontPickerViewControllerConfiguration *)v6 _filterFontNames];
            if (([v41 isEqualToSet:?] & 1) == 0)
            {

              if (v65)
              {
                v43 = v65;
              }

              else
              {
                v43 = v56;
              }

              if (v62)
              {
              }

              if (!v68)
              {
              }

              v14 = 0;
              v3 = v59;
              goto LABEL_59;
            }

            v54 = v41;
            v55 = 1;
          }

          else
          {
            v62 = v36;
            v58 = v19;
            v56 = 0;
            v57 = v16;
            v59 = v3;
            v55 = 0;
          }

          v44 = [(UIFontPickerViewControllerConfiguration *)self _showsSectionIndexBar];
          if (v44 != [(UIFontPickerViewControllerConfiguration *)v6 _showsSectionIndexBar])
          {
            v14 = 0;
            goto LABEL_95;
          }

          v46 = [(UIFontPickerViewControllerConfiguration *)self _clientFontContextEndpoint];
          if (v46 || ([(UIFontPickerViewControllerConfiguration *)v6 _clientFontContextEndpoint], (v50 = objc_claimAutoreleasedReturnValue()) != 0))
          {
            v47 = [(UIFontPickerViewControllerConfiguration *)self _clientFontContextEndpoint];
            v52 = [(UIFontPickerViewControllerConfiguration *)v6 _clientFontContextEndpoint];
            v53 = v47;
            if (([v47 isEqual:v52] & 1) == 0)
            {
              v14 = 0;
              goto LABEL_126;
            }

            v51 = 1;
          }

          else
          {
            v50 = 0;
            v51 = 0;
          }

          v48 = [(UIFontPickerViewControllerConfiguration *)self _clientRecentFonts];
          v49 = [(UIFontPickerViewControllerConfiguration *)v6 _clientRecentFonts];
          v14 = [v48 isEqual:v49];

          if (!v51)
          {
            if (v46)
            {
            }

            else
            {
            }

LABEL_95:
            if ((v55 & 1) == 0)
            {
LABEL_97:
              v3 = v59;
              v16 = v57;
              v19 = v58;
              v30 = v73;
              goto LABEL_98;
            }

LABEL_96:

            goto LABEL_97;
          }

LABEL_126:

          if (!v46)
          {
          }

          if (!v55)
          {
            goto LABEL_97;
          }

          goto LABEL_96;
        }
      }

      v20 = [(UIFontPickerViewControllerConfiguration *)self _serializedPredicate];
      v21 = [(UIFontPickerViewControllerConfiguration *)v6 _serializedPredicate];
      if ([v20 isEqualToData:v21])
      {
        v74 = v20;
        v75 = v21;
        v22 = v13;
        v23 = v3;
        v77 = 1;
        goto LABEL_32;
      }

      v24 = v81;
      if (!v81)
      {
        v24 = v76;
      }

      v14 = 0;
      if ((v19 & 1) == 0)
      {
        goto LABEL_48;
      }

LABEL_47:

LABEL_48:
      if (!v16)
      {
      }

      if (!v13)
      {
        goto LABEL_53;
      }

      v12 = v79;
      v11 = v80;
LABEL_52:

LABEL_53:
      if (!v10)
      {
      }

      goto LABEL_13;
    }

    v14 = 0;
  }

LABEL_14:

  return v14;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeBool:-[UIFontPickerViewControllerConfiguration includeFaces](self forKey:{"includeFaces"), @"IncludesFaces"}];
  [v4 encodeBool:-[UIFontPickerViewControllerConfiguration displayUsingSystemFont](self forKey:{"displayUsingSystemFont"), @"DisplaySystemFont"}];
  [v4 encodeInt32:-[UIFontPickerViewControllerConfiguration filteredTraits](self forKey:{"filteredTraits"), @"FilteredTraits"}];
  v5 = [(UIFontPickerViewControllerConfiguration *)self _allowedLanguages];
  [v4 encodeObject:v5 forKey:@"AllowedLanguages"];

  v6 = [(UIFontPickerViewControllerConfiguration *)self _serializedPredicate];
  [v4 encodeObject:v6 forKey:@"SerializedPredicate"];

  [v4 encodeBool:-[UIFontPickerViewControllerConfiguration _hideSearchBar](self forKey:{"_hideSearchBar"), @"HideSearchBar"}];
  v7 = [(UIFontPickerViewControllerConfiguration *)self _tintColor];
  [v4 encodeObject:v7 forKey:@"TintColor"];

  [v4 encodeBool:-[UIFontPickerViewControllerConfiguration _includeDefaultFont](self forKey:{"_includeDefaultFont"), @"IncludesDefaultFont"}];
  v8 = [(UIFontPickerViewControllerConfiguration *)self _filterFamilyName];
  [v4 encodeObject:v8 forKey:@"FilterFamilyNameCodingKey"];

  v9 = [(UIFontPickerViewControllerConfiguration *)self _filterFontNames];
  [v4 encodeObject:v9 forKey:@"FilterFontNamesCodingKey"];

  [v4 encodeBool:-[UIFontPickerViewControllerConfiguration _showsSectionIndexBar](self forKey:{"_showsSectionIndexBar"), @"ShowsSectionIndexBarCodingKey"}];
  v10 = [(UIFontPickerViewControllerConfiguration *)self _clientFontContextEndpoint];
  [v4 encodeObject:v10 forKey:@"ClientFontContextEndpointCodingKey"];

  v11 = [(UIFontPickerViewControllerConfiguration *)self _clientRecentFonts];
  [v4 encodeObject:v11 forKey:@"ClientRecentFontsCodingKey"];
}

- (UIFontPickerViewControllerConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = UIFontPickerViewControllerConfiguration;
  v5 = [(UIFontPickerViewControllerConfiguration *)&v15 init];
  if (v5)
  {
    -[UIFontPickerViewControllerConfiguration setIncludeFaces:](v5, "setIncludeFaces:", [v4 decodeBoolForKey:@"IncludesFaces"]);
    -[UIFontPickerViewControllerConfiguration setDisplayUsingSystemFont:](v5, "setDisplayUsingSystemFont:", [v4 decodeBoolForKey:@"DisplaySystemFont"]);
    -[UIFontPickerViewControllerConfiguration setFilteredTraits:](v5, "setFilteredTraits:", [v4 decodeInt32ForKey:@"FilteredTraits"]);
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"AllowedLanguages"];
    [(UIFontPickerViewControllerConfiguration *)v5 set_allowedLanguages:v6];

    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SerializedPredicate"];
    [(UIFontPickerViewControllerConfiguration *)v5 _setPredicateFromData:v7];

    -[UIFontPickerViewControllerConfiguration _setHideSearchBar:](v5, "_setHideSearchBar:", [v4 decodeBoolForKey:@"HideSearchBar"]);
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"TintColor"];
    [(UIFontPickerViewControllerConfiguration *)v5 _setTintColor:v8];

    -[UIFontPickerViewControllerConfiguration set_includeDefaultFont:](v5, "set_includeDefaultFont:", [v4 decodeBoolForKey:@"IncludesDefaultFont"]);
    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"FilterFamilyNameCodingKey"];
    [(UIFontPickerViewControllerConfiguration *)v5 set_filterFamilyName:v9];

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"FilterFontNamesCodingKey"];
    [(UIFontPickerViewControllerConfiguration *)v5 set_filterFontNames:v10];

    -[UIFontPickerViewControllerConfiguration set_showsSectionIndexBar:](v5, "set_showsSectionIndexBar:", [v4 decodeBoolForKey:@"ShowsSectionIndexBarCodingKey"]);
    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ClientFontContextEndpointCodingKey"];
    [(UIFontPickerViewControllerConfiguration *)v5 set_clientFontContextEndpoint:v11];

    if (qword_1ED49FBB0 != -1)
    {
      dispatch_once(&qword_1ED49FBB0, &__block_literal_global_440);
    }

    v12 = _MergedGlobals_1229;
    v13 = [v4 decodeObjectOfClasses:v12 forKey:@"ClientRecentFontsCodingKey"];
    [(UIFontPickerViewControllerConfiguration *)v5 _setClientRecentFonts:v13];
  }

  return v5;
}

- (void)encodeWithBSXPCCoder:(id)a3
{
  v4 = a3;
  [v4 encodeBool:-[UIFontPickerViewControllerConfiguration includeFaces](self forKey:{"includeFaces"), @"IncludesFaces"}];
  [v4 encodeBool:-[UIFontPickerViewControllerConfiguration displayUsingSystemFont](self forKey:{"displayUsingSystemFont"), @"DisplaySystemFont"}];
  [v4 encodeInt64:-[UIFontPickerViewControllerConfiguration filteredTraits](self forKey:{"filteredTraits"), @"FilteredTraits"}];
  v5 = [(UIFontPickerViewControllerConfiguration *)self _allowedLanguages];
  [v4 encodeCollection:v5 forKey:@"AllowedLanguages"];

  v6 = [(UIFontPickerViewControllerConfiguration *)self _serializedPredicate];
  [v4 encodeObject:v6 forKey:@"SerializedPredicate"];

  [v4 encodeBool:-[UIFontPickerViewControllerConfiguration _hideSearchBar](self forKey:{"_hideSearchBar"), @"HideSearchBar"}];
  v7 = [(UIFontPickerViewControllerConfiguration *)self _tintColor];
  [v4 encodeObject:v7 forKey:@"TintColor"];

  [v4 encodeBool:-[UIFontPickerViewControllerConfiguration _includeDefaultFont](self forKey:{"_includeDefaultFont"), @"IncludesDefaultFont"}];
  v8 = [(UIFontPickerViewControllerConfiguration *)self _filterFamilyName];
  [v4 encodeObject:v8 forKey:@"FilterFamilyNameCodingKey"];

  v9 = [(UIFontPickerViewControllerConfiguration *)self _filterFontNames];
  [v4 encodeObject:v9 forKey:@"FilterFontNamesCodingKey"];

  [v4 encodeBool:-[UIFontPickerViewControllerConfiguration _showsSectionIndexBar](self forKey:{"_showsSectionIndexBar"), @"ShowsSectionIndexBarCodingKey"}];
  v10 = [(UIFontPickerViewControllerConfiguration *)self _clientFontContextEndpoint];
  [v4 encodeObject:v10 forKey:@"ClientFontContextEndpointCodingKey"];

  v11 = [(UIFontPickerViewControllerConfiguration *)self _clientRecentFonts];
  [v4 encodeCollection:v11 forKey:@"ClientRecentFontsCodingKey"];
}

- (UIFontPickerViewControllerConfiguration)initWithBSXPCCoder:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = UIFontPickerViewControllerConfiguration;
  v5 = [(UIFontPickerViewControllerConfiguration *)&v17 init];
  if (v5)
  {
    -[UIFontPickerViewControllerConfiguration setIncludeFaces:](v5, "setIncludeFaces:", [v4 decodeBoolForKey:@"IncludesFaces"]);
    -[UIFontPickerViewControllerConfiguration setDisplayUsingSystemFont:](v5, "setDisplayUsingSystemFont:", [v4 decodeBoolForKey:@"DisplaySystemFont"]);
    -[UIFontPickerViewControllerConfiguration setFilteredTraits:](v5, "setFilteredTraits:", [v4 decodeInt64ForKey:@"FilteredTraits"]);
    v6 = objc_opt_class();
    v7 = [v4 decodeCollectionOfClass:v6 containingClass:objc_opt_class() forKey:@"AllowedLanguages"];
    [(UIFontPickerViewControllerConfiguration *)v5 set_allowedLanguages:v7];

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SerializedPredicate"];
    [(UIFontPickerViewControllerConfiguration *)v5 _setPredicateFromData:v8];

    -[UIFontPickerViewControllerConfiguration _setHideSearchBar:](v5, "_setHideSearchBar:", [v4 decodeBoolForKey:@"HideSearchBar"]);
    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"TintColor"];
    [(UIFontPickerViewControllerConfiguration *)v5 _setTintColor:v9];

    -[UIFontPickerViewControllerConfiguration set_includeDefaultFont:](v5, "set_includeDefaultFont:", [v4 decodeBoolForKey:@"IncludesDefaultFont"]);
    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"FilterFamilyNameCodingKey"];
    [(UIFontPickerViewControllerConfiguration *)v5 set_filterFamilyName:v10];

    v11 = objc_opt_class();
    v12 = [v4 decodeCollectionOfClass:v11 containingClass:objc_opt_class() forKey:@"FilterFontNamesCodingKey"];
    [(UIFontPickerViewControllerConfiguration *)v5 set_filterFontNames:v12];

    -[UIFontPickerViewControllerConfiguration set_showsSectionIndexBar:](v5, "set_showsSectionIndexBar:", [v4 decodeBoolForKey:@"ShowsSectionIndexBarCodingKey"]);
    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ClientFontContextEndpointCodingKey"];
    [(UIFontPickerViewControllerConfiguration *)v5 set_clientFontContextEndpoint:v13];

    v14 = objc_opt_class();
    v15 = [v4 decodeCollectionOfClass:v14 containingClass:objc_opt_class() forKey:@"ClientRecentFontsCodingKey"];
    [(UIFontPickerViewControllerConfiguration *)v5 _setClientRecentFonts:v15];
  }

  return v5;
}

+ (NSPredicate)filterPredicateForFilteredLanguages:(NSArray *)filteredLanguages
{
  v3 = filteredLanguages;
  if ([(NSArray *)v3 count])
  {
    v4 = [MEMORY[0x1E696AE18] predicateWithFormat:@"ANY %@ IN SELF", v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setFilteredLanguagesPredicate:(NSPredicate *)filteredLanguagesPredicate
{
  v8 = filteredLanguagesPredicate;
  objc_storeStrong(&self->_filteredLanguagesPredicate, filteredLanguagesPredicate);
  if (v8)
  {
    v5 = [MEMORY[0x1E695DF58] supportedLanguages];
    v6 = [v5 allObjects];
    v7 = [v6 filteredArrayUsingPredicate:v8];
    [(UIFontPickerViewControllerConfiguration *)self set_allowedLanguages:v7];
  }

  else
  {
    [(UIFontPickerViewControllerConfiguration *)self set_allowedLanguages:0];
  }
}

- (id)succinctDescription
{
  v2 = [(UIFontPickerViewControllerConfiguration *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  v4 = [v3 appendBool:self->_includeFaces withName:@"includeFaces"];
  v5 = [v3 appendBool:self->_displayUsingSystemFont withName:@"displayUsingSystemFont"];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(UIFontPickerViewControllerConfiguration *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)debugDescriptionWithMultilinePrefix:(id)a3
{
  v3 = [(UIFontPickerViewControllerConfiguration *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = MEMORY[0x1E698E680];
  v5 = a3;
  v6 = [v4 builderWithObject:self];
  [v6 setActiveMultilinePrefix:v5];

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __81__UIFontPickerViewControllerConfiguration_descriptionBuilderWithMultilinePrefix___block_invoke;
  v11[3] = &unk_1E70F35B8;
  v7 = v6;
  v12 = v7;
  v13 = self;
  v8 = [v7 modifyBody:v11];
  v9 = v7;

  return v7;
}

void __81__UIFontPickerViewControllerConfiguration_descriptionBuilderWithMultilinePrefix___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [v2 activeMultilinePrefix];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __81__UIFontPickerViewControllerConfiguration_descriptionBuilderWithMultilinePrefix___block_invoke_2;
  v6[3] = &unk_1E70F35B8;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7 = v4;
  v8 = v5;
  [v2 appendBodySectionWithName:0 multilinePrefix:v3 block:v6];
}

void __81__UIFontPickerViewControllerConfiguration_descriptionBuilderWithMultilinePrefix___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) appendBool:*(*(a1 + 40) + 8) withName:@"includeFaces"];
  v3 = [*(a1 + 32) appendBool:*(*(a1 + 40) + 9) withName:@"displayUsingSystemFont"];
  v4 = *(a1 + 32);
  v5 = _UIFontDescriptorDescriptionForSymbolicTraits(*(*(a1 + 40) + 16));
  [v4 appendString:v5 withName:@"filteredTraits"];

  v6 = *(*(a1 + 40) + 24);
  if (v6)
  {
    v7 = *(a1 + 32);
    v8 = [v6 description];
    [v7 appendString:v8 withName:@"filteredLanguagesPredicate"];
  }
}

@end