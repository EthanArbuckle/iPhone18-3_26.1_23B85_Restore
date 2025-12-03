@interface UIFontPickerViewControllerConfiguration
+ (NSPredicate)filterPredicateForFilteredLanguages:(NSArray *)filteredLanguages;
- (BOOL)_matchesLanguageList:(id)list;
- (BOOL)isEqual:(id)equal;
- (UIFontPickerViewControllerConfiguration)initWithBSXPCCoder:(id)coder;
- (UIFontPickerViewControllerConfiguration)initWithCoder:(id)coder;
- (id)_serializedPredicate;
- (id)copyWithZone:(_NSZone *)zone;
- (id)debugDescriptionWithMultilinePrefix:(id)prefix;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (void)_setPredicateFromData:(id)data;
- (void)encodeWithBSXPCCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
- (void)setFilteredLanguagesPredicate:(NSPredicate *)filteredLanguagesPredicate;
@end

@implementation UIFontPickerViewControllerConfiguration

- (BOOL)_matchesLanguageList:(id)list
{
  if (list)
  {
    v4 = sub_18A4A7548();
  }

  else
  {
    v4 = 0;
  }

  selfCopy = self;
  v6 = sub_188FB9110(v4);

  return v6 & 1;
}

- (id)_serializedPredicate
{
  selfCopy = self;
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

- (void)_setPredicateFromData:(id)data
{
  dataCopy = data;
  if (data)
  {
    selfCopy = self;
    v5 = dataCopy;
    dataCopy = sub_18A4A2928();
    v7 = v6;
  }

  else
  {
    selfCopy2 = self;
    v7 = 0xF000000000000000;
  }

  sub_188FB970C(dataCopy, v7);
  sub_188DBF840(dataCopy, v7);
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  [v5 setIncludeFaces:{-[UIFontPickerViewControllerConfiguration includeFaces](self, "includeFaces")}];
  [v5 setDisplayUsingSystemFont:{-[UIFontPickerViewControllerConfiguration displayUsingSystemFont](self, "displayUsingSystemFont")}];
  [v5 setFilteredTraits:{-[UIFontPickerViewControllerConfiguration filteredTraits](self, "filteredTraits")}];
  filteredLanguagesPredicate = [(UIFontPickerViewControllerConfiguration *)self filteredLanguagesPredicate];
  v7 = [filteredLanguagesPredicate copyWithZone:zone];
  [v5 setFilteredLanguagesPredicate:v7];

  _allowedLanguages = [(UIFontPickerViewControllerConfiguration *)self _allowedLanguages];
  v9 = [_allowedLanguages copyWithZone:zone];
  [v5 set_allowedLanguages:v9];

  _swiftPredicate = [(UIFontPickerViewControllerConfiguration *)self _swiftPredicate];
  v11 = [_swiftPredicate copyWithZone:zone];
  [v5 set_swiftPredicate:v11];

  [v5 _setHideSearchBar:{-[UIFontPickerViewControllerConfiguration _hideSearchBar](self, "_hideSearchBar")}];
  _tintColor = [(UIFontPickerViewControllerConfiguration *)self _tintColor];
  v13 = [_tintColor copyWithZone:zone];
  [v5 _setTintColor:v13];

  [v5 set_includeDefaultFont:{-[UIFontPickerViewControllerConfiguration _includeDefaultFont](self, "_includeDefaultFont")}];
  _filterFamilyName = [(UIFontPickerViewControllerConfiguration *)self _filterFamilyName];
  [v5 set_filterFamilyName:_filterFamilyName];

  _filterFontNames = [(UIFontPickerViewControllerConfiguration *)self _filterFontNames];
  [v5 set_filterFontNames:_filterFontNames];

  [v5 set_showsSectionIndexBar:{-[UIFontPickerViewControllerConfiguration _showsSectionIndexBar](self, "_showsSectionIndexBar")}];
  _clientFontContextEndpoint = [(UIFontPickerViewControllerConfiguration *)self _clientFontContextEndpoint];
  [v5 set_clientFontContextEndpoint:_clientFontContextEndpoint];

  _clientRecentFonts = [(UIFontPickerViewControllerConfiguration *)self _clientRecentFonts];
  [v5 _setClientRecentFonts:_clientRecentFonts];

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v14 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = equalCopy;
      includeFaces = [(UIFontPickerViewControllerConfiguration *)self includeFaces];
      if (includeFaces != [(UIFontPickerViewControllerConfiguration *)v6 includeFaces]|| (v8 = [(UIFontPickerViewControllerConfiguration *)self displayUsingSystemFont], v8 != [(UIFontPickerViewControllerConfiguration *)v6 displayUsingSystemFont]) || (v9 = [(UIFontPickerViewControllerConfiguration *)self filteredTraits], v9 != [(UIFontPickerViewControllerConfiguration *)v6 filteredTraits]))
      {
        v14 = 0;
LABEL_13:

        goto LABEL_14;
      }

      filteredLanguagesPredicate = [(UIFontPickerViewControllerConfiguration *)self filteredLanguagesPredicate];
      if (filteredLanguagesPredicate || ([(UIFontPickerViewControllerConfiguration *)v6 filteredLanguagesPredicate], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        filteredLanguagesPredicate2 = [(UIFontPickerViewControllerConfiguration *)self filteredLanguagesPredicate];
        filteredLanguagesPredicate3 = [(UIFontPickerViewControllerConfiguration *)v6 filteredLanguagesPredicate];
        if (![filteredLanguagesPredicate2 isEqual:filteredLanguagesPredicate3])
        {
          v14 = 0;
          goto LABEL_52;
        }

        v79 = filteredLanguagesPredicate3;
        v80 = filteredLanguagesPredicate2;
        v13 = 1;
      }

      else
      {
        v13 = 0;
      }

      _allowedLanguages = [(UIFontPickerViewControllerConfiguration *)self _allowedLanguages];
      if (_allowedLanguages || ([(UIFontPickerViewControllerConfiguration *)v6 _allowedLanguages], (v78 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v17 = _allowedLanguages;
        _allowedLanguages2 = [(UIFontPickerViewControllerConfiguration *)self _allowedLanguages];
        _allowedLanguages3 = [(UIFontPickerViewControllerConfiguration *)v6 _allowedLanguages];
        v83 = _allowedLanguages2;
        if (![_allowedLanguages2 isEqualToArray:_allowedLanguages3])
        {
          v14 = 0;
          _allowedLanguages = v17;
          goto LABEL_47;
        }

        _allowedLanguages = v17;
        v19 = 1;
      }

      else
      {
        v78 = 0;
        v19 = 0;
      }

      _swiftPredicate = [(UIFontPickerViewControllerConfiguration *)self _swiftPredicate];
      if (!_swiftPredicate)
      {
        _swiftPredicate2 = [(UIFontPickerViewControllerConfiguration *)v6 _swiftPredicate];
        if (!_swiftPredicate2)
        {
          v22 = v13;
          v23 = v3;
          _swiftPredicate2 = 0;
          v77 = 0;
LABEL_32:
          _hideSearchBar = [(UIFontPickerViewControllerConfiguration *)self _hideSearchBar];
          if (_hideSearchBar != [(UIFontPickerViewControllerConfiguration *)v6 _hideSearchBar])
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
            _tintColor = [(UIFontPickerViewControllerConfiguration *)self _tintColor];
            _tintColor2 = [(UIFontPickerViewControllerConfiguration *)v6 _tintColor];
            if (([_tintColor isEqual:_tintColor2] & 1) == 0)
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

            v71 = _tintColor2;
            v69 = _tintColor;
            v23 = v3;
            v72 = 1;
          }

          else
          {
            v70 = 0;
            v72 = 0;
          }

          _includeDefaultFont = [(UIFontPickerViewControllerConfiguration *)self _includeDefaultFont];
          if (_includeDefaultFont != [(UIFontPickerViewControllerConfiguration *)v6 _includeDefaultFont])
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
            _filterFamilyName = [(UIFontPickerViewControllerConfiguration *)self _filterFamilyName];
            v13 = v22;
            if (!_filterFamilyName)
            {
              v14 = 0;
              v37 = v78;
              v30 = v73;
              v31 = v71;
              goto LABEL_102;
            }

            v66 = _filterFamilyName;
            _filterFamilyName2 = [(UIFontPickerViewControllerConfiguration *)v6 _filterFamilyName];
            v30 = v73;
            if (!_filterFamilyName2)
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

            v64 = _filterFamilyName2;
            _filterFamilyName3 = [(UIFontPickerViewControllerConfiguration *)self _filterFamilyName];
            _filterFamilyName4 = [(UIFontPickerViewControllerConfiguration *)v6 _filterFamilyName];
            v63 = _filterFamilyName3;
            if (([_filterFamilyName3 isEqualToString:_filterFamilyName4] & 1) == 0)
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
                  v28 = _swiftPredicate;
                  if (!_swiftPredicate)
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

            v60 = _filterFamilyName4;
            _filterFontNames5 = 1;
          }

          else
          {
            v67 = 0;
            _filterFontNames5 = 0;
            v13 = v22;
          }

          v30 = v73;
          _filterFontNames = [(UIFontPickerViewControllerConfiguration *)self _filterFontNames];
          if (_filterFontNames || ([(UIFontPickerViewControllerConfiguration *)v6 _filterFontNames], (v56 = objc_claimAutoreleasedReturnValue()) != 0))
          {
            _filterFontNames2 = [(UIFontPickerViewControllerConfiguration *)self _filterFontNames];
            if (!_filterFontNames2)
            {
              v62 = _filterFontNames5;
              v14 = 0;
LABEL_98:
              v31 = v71;
              if (!_filterFontNames)
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

            _filterFontNames3 = [(UIFontPickerViewControllerConfiguration *)v6 _filterFontNames];
            if (!_filterFontNames3)
            {

              if (_filterFontNames)
              {
                v42 = _filterFontNames;
              }

              else
              {
                v42 = v56;
              }

              if (_filterFontNames5)
              {
              }

              if (!v68)
              {
              }

              v14 = 0;
              goto LABEL_59;
            }

            v30 = _filterFontNames3;
            v62 = _filterFontNames5;
            v58 = v19;
            v57 = _allowedLanguages;
            v59 = v3;
            _filterFontNames4 = [(UIFontPickerViewControllerConfiguration *)self _filterFontNames];
            _filterFontNames5 = [(UIFontPickerViewControllerConfiguration *)v6 _filterFontNames];
            if (([_filterFontNames4 isEqualToSet:?] & 1) == 0)
            {

              if (_filterFontNames)
              {
                v43 = _filterFontNames;
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

            v54 = _filterFontNames4;
            v55 = 1;
          }

          else
          {
            v62 = _filterFontNames5;
            v58 = v19;
            v56 = 0;
            v57 = _allowedLanguages;
            v59 = v3;
            v55 = 0;
          }

          _showsSectionIndexBar = [(UIFontPickerViewControllerConfiguration *)self _showsSectionIndexBar];
          if (_showsSectionIndexBar != [(UIFontPickerViewControllerConfiguration *)v6 _showsSectionIndexBar])
          {
            v14 = 0;
            goto LABEL_95;
          }

          _clientFontContextEndpoint = [(UIFontPickerViewControllerConfiguration *)self _clientFontContextEndpoint];
          if (_clientFontContextEndpoint || ([(UIFontPickerViewControllerConfiguration *)v6 _clientFontContextEndpoint], (v50 = objc_claimAutoreleasedReturnValue()) != 0))
          {
            _clientFontContextEndpoint2 = [(UIFontPickerViewControllerConfiguration *)self _clientFontContextEndpoint];
            _clientFontContextEndpoint3 = [(UIFontPickerViewControllerConfiguration *)v6 _clientFontContextEndpoint];
            v53 = _clientFontContextEndpoint2;
            if (([_clientFontContextEndpoint2 isEqual:_clientFontContextEndpoint3] & 1) == 0)
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

          _clientRecentFonts = [(UIFontPickerViewControllerConfiguration *)self _clientRecentFonts];
          _clientRecentFonts2 = [(UIFontPickerViewControllerConfiguration *)v6 _clientRecentFonts];
          v14 = [_clientRecentFonts isEqual:_clientRecentFonts2];

          if (!v51)
          {
            if (_clientFontContextEndpoint)
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
              _allowedLanguages = v57;
              v19 = v58;
              v30 = v73;
              goto LABEL_98;
            }

LABEL_96:

            goto LABEL_97;
          }

LABEL_126:

          if (!_clientFontContextEndpoint)
          {
          }

          if (!v55)
          {
            goto LABEL_97;
          }

          goto LABEL_96;
        }
      }

      _serializedPredicate = [(UIFontPickerViewControllerConfiguration *)self _serializedPredicate];
      _serializedPredicate2 = [(UIFontPickerViewControllerConfiguration *)v6 _serializedPredicate];
      if ([_serializedPredicate isEqualToData:_serializedPredicate2])
      {
        v74 = _serializedPredicate;
        v75 = _serializedPredicate2;
        v22 = v13;
        v23 = v3;
        v77 = 1;
        goto LABEL_32;
      }

      v24 = _swiftPredicate;
      if (!_swiftPredicate)
      {
        v24 = _swiftPredicate2;
      }

      v14 = 0;
      if ((v19 & 1) == 0)
      {
        goto LABEL_48;
      }

LABEL_47:

LABEL_48:
      if (!_allowedLanguages)
      {
      }

      if (!v13)
      {
        goto LABEL_53;
      }

      filteredLanguagesPredicate3 = v79;
      filteredLanguagesPredicate2 = v80;
LABEL_52:

LABEL_53:
      if (!filteredLanguagesPredicate)
      {
      }

      goto LABEL_13;
    }

    v14 = 0;
  }

LABEL_14:

  return v14;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeBool:-[UIFontPickerViewControllerConfiguration includeFaces](self forKey:{"includeFaces"), @"IncludesFaces"}];
  [coderCopy encodeBool:-[UIFontPickerViewControllerConfiguration displayUsingSystemFont](self forKey:{"displayUsingSystemFont"), @"DisplaySystemFont"}];
  [coderCopy encodeInt32:-[UIFontPickerViewControllerConfiguration filteredTraits](self forKey:{"filteredTraits"), @"FilteredTraits"}];
  _allowedLanguages = [(UIFontPickerViewControllerConfiguration *)self _allowedLanguages];
  [coderCopy encodeObject:_allowedLanguages forKey:@"AllowedLanguages"];

  _serializedPredicate = [(UIFontPickerViewControllerConfiguration *)self _serializedPredicate];
  [coderCopy encodeObject:_serializedPredicate forKey:@"SerializedPredicate"];

  [coderCopy encodeBool:-[UIFontPickerViewControllerConfiguration _hideSearchBar](self forKey:{"_hideSearchBar"), @"HideSearchBar"}];
  _tintColor = [(UIFontPickerViewControllerConfiguration *)self _tintColor];
  [coderCopy encodeObject:_tintColor forKey:@"TintColor"];

  [coderCopy encodeBool:-[UIFontPickerViewControllerConfiguration _includeDefaultFont](self forKey:{"_includeDefaultFont"), @"IncludesDefaultFont"}];
  _filterFamilyName = [(UIFontPickerViewControllerConfiguration *)self _filterFamilyName];
  [coderCopy encodeObject:_filterFamilyName forKey:@"FilterFamilyNameCodingKey"];

  _filterFontNames = [(UIFontPickerViewControllerConfiguration *)self _filterFontNames];
  [coderCopy encodeObject:_filterFontNames forKey:@"FilterFontNamesCodingKey"];

  [coderCopy encodeBool:-[UIFontPickerViewControllerConfiguration _showsSectionIndexBar](self forKey:{"_showsSectionIndexBar"), @"ShowsSectionIndexBarCodingKey"}];
  _clientFontContextEndpoint = [(UIFontPickerViewControllerConfiguration *)self _clientFontContextEndpoint];
  [coderCopy encodeObject:_clientFontContextEndpoint forKey:@"ClientFontContextEndpointCodingKey"];

  _clientRecentFonts = [(UIFontPickerViewControllerConfiguration *)self _clientRecentFonts];
  [coderCopy encodeObject:_clientRecentFonts forKey:@"ClientRecentFontsCodingKey"];
}

- (UIFontPickerViewControllerConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = UIFontPickerViewControllerConfiguration;
  v5 = [(UIFontPickerViewControllerConfiguration *)&v15 init];
  if (v5)
  {
    -[UIFontPickerViewControllerConfiguration setIncludeFaces:](v5, "setIncludeFaces:", [coderCopy decodeBoolForKey:@"IncludesFaces"]);
    -[UIFontPickerViewControllerConfiguration setDisplayUsingSystemFont:](v5, "setDisplayUsingSystemFont:", [coderCopy decodeBoolForKey:@"DisplaySystemFont"]);
    -[UIFontPickerViewControllerConfiguration setFilteredTraits:](v5, "setFilteredTraits:", [coderCopy decodeInt32ForKey:@"FilteredTraits"]);
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AllowedLanguages"];
    [(UIFontPickerViewControllerConfiguration *)v5 set_allowedLanguages:v6];

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SerializedPredicate"];
    [(UIFontPickerViewControllerConfiguration *)v5 _setPredicateFromData:v7];

    -[UIFontPickerViewControllerConfiguration _setHideSearchBar:](v5, "_setHideSearchBar:", [coderCopy decodeBoolForKey:@"HideSearchBar"]);
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"TintColor"];
    [(UIFontPickerViewControllerConfiguration *)v5 _setTintColor:v8];

    -[UIFontPickerViewControllerConfiguration set_includeDefaultFont:](v5, "set_includeDefaultFont:", [coderCopy decodeBoolForKey:@"IncludesDefaultFont"]);
    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"FilterFamilyNameCodingKey"];
    [(UIFontPickerViewControllerConfiguration *)v5 set_filterFamilyName:v9];

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"FilterFontNamesCodingKey"];
    [(UIFontPickerViewControllerConfiguration *)v5 set_filterFontNames:v10];

    -[UIFontPickerViewControllerConfiguration set_showsSectionIndexBar:](v5, "set_showsSectionIndexBar:", [coderCopy decodeBoolForKey:@"ShowsSectionIndexBarCodingKey"]);
    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ClientFontContextEndpointCodingKey"];
    [(UIFontPickerViewControllerConfiguration *)v5 set_clientFontContextEndpoint:v11];

    if (qword_1ED49FBB0 != -1)
    {
      dispatch_once(&qword_1ED49FBB0, &__block_literal_global_440);
    }

    v12 = _MergedGlobals_1229;
    v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"ClientRecentFontsCodingKey"];
    [(UIFontPickerViewControllerConfiguration *)v5 _setClientRecentFonts:v13];
  }

  return v5;
}

- (void)encodeWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeBool:-[UIFontPickerViewControllerConfiguration includeFaces](self forKey:{"includeFaces"), @"IncludesFaces"}];
  [coderCopy encodeBool:-[UIFontPickerViewControllerConfiguration displayUsingSystemFont](self forKey:{"displayUsingSystemFont"), @"DisplaySystemFont"}];
  [coderCopy encodeInt64:-[UIFontPickerViewControllerConfiguration filteredTraits](self forKey:{"filteredTraits"), @"FilteredTraits"}];
  _allowedLanguages = [(UIFontPickerViewControllerConfiguration *)self _allowedLanguages];
  [coderCopy encodeCollection:_allowedLanguages forKey:@"AllowedLanguages"];

  _serializedPredicate = [(UIFontPickerViewControllerConfiguration *)self _serializedPredicate];
  [coderCopy encodeObject:_serializedPredicate forKey:@"SerializedPredicate"];

  [coderCopy encodeBool:-[UIFontPickerViewControllerConfiguration _hideSearchBar](self forKey:{"_hideSearchBar"), @"HideSearchBar"}];
  _tintColor = [(UIFontPickerViewControllerConfiguration *)self _tintColor];
  [coderCopy encodeObject:_tintColor forKey:@"TintColor"];

  [coderCopy encodeBool:-[UIFontPickerViewControllerConfiguration _includeDefaultFont](self forKey:{"_includeDefaultFont"), @"IncludesDefaultFont"}];
  _filterFamilyName = [(UIFontPickerViewControllerConfiguration *)self _filterFamilyName];
  [coderCopy encodeObject:_filterFamilyName forKey:@"FilterFamilyNameCodingKey"];

  _filterFontNames = [(UIFontPickerViewControllerConfiguration *)self _filterFontNames];
  [coderCopy encodeObject:_filterFontNames forKey:@"FilterFontNamesCodingKey"];

  [coderCopy encodeBool:-[UIFontPickerViewControllerConfiguration _showsSectionIndexBar](self forKey:{"_showsSectionIndexBar"), @"ShowsSectionIndexBarCodingKey"}];
  _clientFontContextEndpoint = [(UIFontPickerViewControllerConfiguration *)self _clientFontContextEndpoint];
  [coderCopy encodeObject:_clientFontContextEndpoint forKey:@"ClientFontContextEndpointCodingKey"];

  _clientRecentFonts = [(UIFontPickerViewControllerConfiguration *)self _clientRecentFonts];
  [coderCopy encodeCollection:_clientRecentFonts forKey:@"ClientRecentFontsCodingKey"];
}

- (UIFontPickerViewControllerConfiguration)initWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v17.receiver = self;
  v17.super_class = UIFontPickerViewControllerConfiguration;
  v5 = [(UIFontPickerViewControllerConfiguration *)&v17 init];
  if (v5)
  {
    -[UIFontPickerViewControllerConfiguration setIncludeFaces:](v5, "setIncludeFaces:", [coderCopy decodeBoolForKey:@"IncludesFaces"]);
    -[UIFontPickerViewControllerConfiguration setDisplayUsingSystemFont:](v5, "setDisplayUsingSystemFont:", [coderCopy decodeBoolForKey:@"DisplaySystemFont"]);
    -[UIFontPickerViewControllerConfiguration setFilteredTraits:](v5, "setFilteredTraits:", [coderCopy decodeInt64ForKey:@"FilteredTraits"]);
    v6 = objc_opt_class();
    v7 = [coderCopy decodeCollectionOfClass:v6 containingClass:objc_opt_class() forKey:@"AllowedLanguages"];
    [(UIFontPickerViewControllerConfiguration *)v5 set_allowedLanguages:v7];

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SerializedPredicate"];
    [(UIFontPickerViewControllerConfiguration *)v5 _setPredicateFromData:v8];

    -[UIFontPickerViewControllerConfiguration _setHideSearchBar:](v5, "_setHideSearchBar:", [coderCopy decodeBoolForKey:@"HideSearchBar"]);
    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"TintColor"];
    [(UIFontPickerViewControllerConfiguration *)v5 _setTintColor:v9];

    -[UIFontPickerViewControllerConfiguration set_includeDefaultFont:](v5, "set_includeDefaultFont:", [coderCopy decodeBoolForKey:@"IncludesDefaultFont"]);
    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"FilterFamilyNameCodingKey"];
    [(UIFontPickerViewControllerConfiguration *)v5 set_filterFamilyName:v10];

    v11 = objc_opt_class();
    v12 = [coderCopy decodeCollectionOfClass:v11 containingClass:objc_opt_class() forKey:@"FilterFontNamesCodingKey"];
    [(UIFontPickerViewControllerConfiguration *)v5 set_filterFontNames:v12];

    -[UIFontPickerViewControllerConfiguration set_showsSectionIndexBar:](v5, "set_showsSectionIndexBar:", [coderCopy decodeBoolForKey:@"ShowsSectionIndexBarCodingKey"]);
    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ClientFontContextEndpointCodingKey"];
    [(UIFontPickerViewControllerConfiguration *)v5 set_clientFontContextEndpoint:v13];

    v14 = objc_opt_class();
    v15 = [coderCopy decodeCollectionOfClass:v14 containingClass:objc_opt_class() forKey:@"ClientRecentFontsCodingKey"];
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
    supportedLanguages = [MEMORY[0x1E695DF58] supportedLanguages];
    allObjects = [supportedLanguages allObjects];
    v7 = [allObjects filteredArrayUsingPredicate:v8];
    [(UIFontPickerViewControllerConfiguration *)self set_allowedLanguages:v7];
  }

  else
  {
    [(UIFontPickerViewControllerConfiguration *)self set_allowedLanguages:0];
  }
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(UIFontPickerViewControllerConfiguration *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  v4 = [v3 appendBool:self->_includeFaces withName:@"includeFaces"];
  v5 = [v3 appendBool:self->_displayUsingSystemFont withName:@"displayUsingSystemFont"];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(UIFontPickerViewControllerConfiguration *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)debugDescriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(UIFontPickerViewControllerConfiguration *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  v4 = MEMORY[0x1E698E680];
  prefixCopy = prefix;
  v6 = [v4 builderWithObject:self];
  [v6 setActiveMultilinePrefix:prefixCopy];

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __81__UIFontPickerViewControllerConfiguration_descriptionBuilderWithMultilinePrefix___block_invoke;
  v11[3] = &unk_1E70F35B8;
  v7 = v6;
  v12 = v7;
  selfCopy = self;
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