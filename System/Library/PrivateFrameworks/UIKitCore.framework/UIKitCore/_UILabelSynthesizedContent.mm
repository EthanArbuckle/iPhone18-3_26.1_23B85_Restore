@interface _UILabelSynthesizedContent
- (BOOL)isEqual:(id)equal;
- (BOOL)reverseNaturalAlignment;
- (id)_synthesizedAttributedString;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)mutableCopy;
- (id)synthesizedAttributedString;
- (id)synthesizedAttributes;
- (unint64_t)length;
- (void)_disablingHyphenationIfURLsDetectedInAttributedString:(id)string;
- (void)_isolateStringWritingDirectionInAttributedString:(id)string;
@end

@implementation _UILabelSynthesizedContent

- (BOOL)reverseNaturalAlignment
{
  content = self->_content;
  semanticContentAttribute = [(_UILabelSynthesizedContent *)self semanticContentAttribute];

  return _UILabelShouldReverseNaturalAlignment(content, semanticContentAttribute);
}

- (unint64_t)length
{
  synthesizedAttributedString = [(_UILabelSynthesizedContent *)self synthesizedAttributedString];
  v3 = [synthesizedAttributedString length];

  return v3;
}

- (id)synthesizedAttributes
{
  defaultAttributes2 = objc_getAssociatedObject(self, &_MergedGlobals_1406);
  if (!defaultAttributes2)
  {
    overrideTextColor = [(_UILabelSynthesizedContent *)self overrideTextColor];
    eliminateShadows = [(_UILabelSynthesizedContent *)self eliminateShadows];
    reverseNaturalAlignment = [(_UILabelSynthesizedContent *)self reverseNaturalAlignment];
    v7 = reverseNaturalAlignment;
    if (overrideTextColor || eliminateShadows || reverseNaturalAlignment || self->_textEncapsulation)
    {
      defaultAttributes = [(_UILabelContent *)self->_content defaultAttributes];
      v9 = [defaultAttributes mutableCopy];

      if (overrideTextColor)
      {
        [v9 setObject:overrideTextColor forKeyedSubscript:*off_1E70EC920];
      }

      if (eliminateShadows)
      {
        v10 = objc_opt_new();
        [v10 setShadowColor:0];
        [v9 setObject:0 forKeyedSubscript:*off_1E70EC9B0];
      }

      textEncapsulation = self->_textEncapsulation;
      if (textEncapsulation)
      {
        v12 = [(NSTextEncapsulation *)textEncapsulation copy];
        [v9 setObject:v12 forKeyedSubscript:*MEMORY[0x1E69655D0]];
      }

      if (v7)
      {
        _UILabelReverseNaturalAlignment(v9);
        objc_claimAutoreleasedReturnValue();
      }

      defaultAttributes2 = [v9 copy];
    }

    else
    {
      defaultAttributes2 = [(_UILabelContent *)self->_content defaultAttributes];
    }

    objc_setAssociatedObject(self, &_MergedGlobals_1406, defaultAttributes2, 1);
  }

  return defaultAttributes2;
}

- (id)synthesizedAttributedString
{
  _synthesizedAttributedString = objc_getAssociatedObject(self, &unk_1ED4A3138);
  if (!_synthesizedAttributedString)
  {
    _synthesizedAttributedString = [(_UILabelSynthesizedContent *)self _synthesizedAttributedString];
    objc_setAssociatedObject(self, &unk_1ED4A3138, _synthesizedAttributedString, 0x301);
    if ([_synthesizedAttributedString length])
    {
      v4 = [_synthesizedAttributedString attribute:*off_1E70EC8D8 atIndex:0 longestEffectiveRange:0 inRange:{0, objc_msgSend(_synthesizedAttributedString, "length")}];
      *&self->_flags = *&self->_flags & 0xF7 | (8 * (v4 != 0));
    }

    else
    {
      *&self->_flags &= ~8u;
    }
  }

  return _synthesizedAttributedString;
}

- (id)_synthesizedAttributedString
{
  if ([(_UILabelContent *)self->_content isNil])
  {
    goto LABEL_2;
  }

  isAttributed = [(_UILabelContent *)self->_content isAttributed];
  content = self->_content;
  if (isAttributed)
  {
    attributedString = [(_UILabelContent *)content attributedString];
    defaultAttributes = [(_UILabelContent *)self->_content defaultAttributes];
    synthesizedAttributes = [(_UILabelSynthesizedContent *)self synthesizedAttributes];
    v9 = [(_UILabelContent *)self->_content length];
    if (defaultAttributes == synthesizedAttributes)
    {
      v24 = [(NSAttributedString *)attributedString _ui_synthesizeAttributedSubstringFromRange:v9 usingDefaultAttributes:synthesizedAttributes];
      v19 = [v24 mutableCopy];
    }

    else
    {
      v10 = [attributedString mutableCopy];
      v11 = *off_1E70EC920;
      v12 = [defaultAttributes objectForKey:*off_1E70EC920];
      v33[0] = MEMORY[0x1E69E9820];
      v33[1] = 3221225472;
      v33[2] = __58___UILabelSynthesizedContent__synthesizedAttributedString__block_invoke;
      v33[3] = &unk_1E71244E8;
      v13 = v12;
      v34 = v13;
      v14 = v10;
      v35 = v14;
      [v14 enumerateAttribute:v11 inRange:0 options:v9 usingBlock:{0, v33}];
      if (*&self->_flags)
      {
        v15 = *off_1E70EC9B0;
        v16 = [defaultAttributes objectForKey:*off_1E70EC9B0];
        v27 = MEMORY[0x1E69E9820];
        v28 = 3221225472;
        v29 = __58___UILabelSynthesizedContent__synthesizedAttributedString__block_invoke_2;
        v30 = &unk_1E71244E8;
        v31 = v16;
        v32 = v14;
        v17 = v16;
        [v32 enumerateAttribute:v15 inRange:0 options:v9 usingBlock:{0, &v27}];
      }

      v18 = [(NSAttributedString *)v14 _ui_synthesizeAttributedSubstringFromRange:v9 usingDefaultAttributes:synthesizedAttributes];
      v19 = [v18 mutableCopy];
    }
  }

  else
  {
    string = [(_UILabelContent *)content string];
    if (!string)
    {
LABEL_2:
      v3 = 0;
      goto LABEL_17;
    }

    attributedString = string;
    v21 = objc_alloc(MEMORY[0x1E696AD40]);
    string2 = [(_UILabelContent *)self->_content string];
    synthesizedAttributes2 = [(_UILabelSynthesizedContent *)self synthesizedAttributes];
    v19 = [v21 initWithString:string2 attributes:synthesizedAttributes2];
  }

  flags = self->_flags;
  if ((flags & 2) != 0)
  {
    [(_UILabelSynthesizedContent *)self _isolateStringWritingDirectionInAttributedString:v19];
    flags = self->_flags;
  }

  if ((flags & 4) != 0)
  {
    [(_UILabelSynthesizedContent *)self _disablingHyphenationIfURLsDetectedInAttributedString:v19];
  }

  v3 = [v19 copy];

LABEL_17:

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_opt_new();
  objc_storeStrong((v4 + 8), self->_content);
  *(v4 + 24) = self->_semanticContentAttribute;
  objc_storeStrong((v4 + 16), self->_overrideTextColor);
  *(v4 + 40) = self->_flags;
  v5 = objc_getAssociatedObject(self, &_MergedGlobals_1406);
  v6 = objc_getAssociatedObject(self, &unk_1ED4A3138);
  objc_setAssociatedObject(v4, &_MergedGlobals_1406, v5, 0x301);
  objc_setAssociatedObject(v4, &unk_1ED4A3138, v6, 0x301);

  return v4;
}

- (id)mutableCopy
{
  v3 = objc_opt_new();
  objc_storeStrong((v3 + 8), self->_content);
  *(v3 + 24) = self->_semanticContentAttribute;
  objc_storeStrong((v3 + 16), self->_overrideTextColor);
  *(v3 + 40) = self->_flags;
  v4 = objc_getAssociatedObject(self, &_MergedGlobals_1406);
  v5 = objc_getAssociatedObject(self, &unk_1ED4A3138);
  objc_setAssociatedObject(v3, &_MergedGlobals_1406, v4, 0x301);
  objc_setAssociatedObject(v3, &unk_1ED4A3138, v5, 0x301);

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy)
  {
    if (equalCopy == self)
    {
      LOBYTE(v12) = 1;
      goto LABEL_22;
    }

    if (((*&equalCopy->_flags ^ *&self->_flags) & 7) == 0)
    {
      semanticContentAttribute = self->_semanticContentAttribute;
      if (semanticContentAttribute == [(_UILabelSynthesizedContent *)equalCopy semanticContentAttribute])
      {
        overrideTextColor = self->_overrideTextColor;
        overrideTextColor = [(_UILabelSynthesizedContent *)v5 overrideTextColor];
        v9 = overrideTextColor;
        v10 = overrideTextColor;
        v11 = v10;
        if (v9 == v10)
        {
        }

        else
        {
          LOBYTE(v12) = 0;
          if (!v9 || !v10)
          {
            v15 = v10;
LABEL_20:

LABEL_21:
            goto LABEL_22;
          }

          v12 = [(UIColor *)v9 isEqual:v10];

          if (!v12)
          {
            goto LABEL_21;
          }
        }

        content = self->_content;
        content = [(_UILabelSynthesizedContent *)v5 content];
        v15 = content;
        v16 = content;
        v9 = v16;
        if (v15 == v16)
        {
          LOBYTE(v12) = 1;
        }

        else
        {
          LOBYTE(v12) = 0;
          if (v15 && v16)
          {
            LOBYTE(v12) = [(_UILabelContent *)v15 isEqual:v16];
          }
        }

        goto LABEL_20;
      }
    }
  }

  LOBYTE(v12) = 0;
LABEL_22:

  return v12;
}

- (void)_disablingHyphenationIfURLsDetectedInAttributedString:(id)string
{
  stringCopy = string;
  string = [stringCopy string];
  v5 = [string length];
  v6 = [objc_alloc(MEMORY[0x1E696AB60]) initWithTypes:32 error:0];
  v7 = [v6 matchesInString:string options:0 range:{0, v5}];
  if ([v7 count])
  {
    v8 = *off_1E70EC988;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __84___UILabelSynthesizedContent__disablingHyphenationIfURLsDetectedInAttributedString___block_invoke;
    v9[3] = &unk_1E7126A88;
    v10 = stringCopy;
    [v10 enumerateAttribute:v8 inRange:0 options:v5 usingBlock:{0, v9}];
  }
}

- (void)_isolateStringWritingDirectionInAttributedString:(id)string
{
  stringCopy = string;
  if ([stringCopy length])
  {
    v6 = [UIView userInterfaceLayoutDirectionForSemanticContentAttribute:self->_semanticContentAttribute]!= UIUserInterfaceLayoutDirectionLeftToRight;
    v46 = 0;
    v47 = &v46;
    v48 = 0x2020000000;
    v49 = 0;
    v42 = 0;
    v43 = &v42;
    v44 = 0x2020000000;
    v45 = 0;
    paragraphStyle = [(_UILabelContent *)self->_content paragraphStyle];
    v8 = [stringCopy length];
    v9 = *off_1E70EC988;
    v38[0] = MEMORY[0x1E69E9820];
    v38[1] = 3221225472;
    v38[2] = __79___UILabelSynthesizedContent__isolateStringWritingDirectionInAttributedString___block_invoke;
    v38[3] = &unk_1E7129EC0;
    v10 = paragraphStyle;
    v39 = v10;
    v40 = &v42;
    v41 = &v46;
    [stringCopy enumerateAttribute:v9 inRange:0 options:v8 usingBlock:{0, v38}];
    v11 = v47[3];
    if (!v11)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"_UILabelSynthesizedContent.m" lineNumber:297 description:@"should have at least one isolate range (beginning to end)"];

      v11 = v47[3];
    }

    v27 = v10;
    v12 = malloc_type_malloc(16 * v11, 0x100004030AC6366uLL);
    v34 = 0;
    v35 = &v34;
    v36 = 0x2020000000;
    v37 = 0;
    *(v43 + 12) = 0;
    v13 = [stringCopy length];
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __79___UILabelSynthesizedContent__isolateStringWritingDirectionInAttributedString___block_invoke_2;
    v28[3] = &unk_1E7129EE8;
    v28[4] = self;
    v30 = &v42;
    v31 = &v34;
    v32 = v12;
    v33 = v6;
    v14 = stringCopy;
    v29 = v14;
    [v14 enumerateAttribute:v9 inRange:0 options:v13 usingBlock:{0, v28}];
    v15 = v35[3];
    if (v15 != v47[3])
    {
      currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler2 handleFailureInMethod:a2 object:self file:@"_UILabelSynthesizedContent.m" lineNumber:324 description:@"Number of writing direction changes was inconsistent"];

      v15 = v47[3];
    }

    if (v15)
    {
      v16 = 0;
      v17 = 0;
      v18 = v12 + 1;
      do
      {
        v19 = *(v18 - 4);
        v20 = *v18 + v16;
        if (v17)
        {
          v21 = [MEMORY[0x1E696AEC0] _stringWithUnichar:8297];
          [v14 replaceCharactersInRange:v20 withString:{0, v21}];

          ++v20;
          ++v16;
        }

        v22 = [MEMORY[0x1E696AEC0] _stringWithUnichar:v19];
        [v14 replaceCharactersInRange:v20 withString:{0, v22}];
        v18 += 2;

        ++v16;
        ++v17;
      }

      while (v17 < v47[3]);
    }

    v23 = [v14 length];
    v24 = [MEMORY[0x1E696AEC0] _stringWithUnichar:8297];
    [v14 replaceCharactersInRange:v23 withString:{0, v24}];

    free(v12);
    _Block_object_dispose(&v34, 8);

    _Block_object_dispose(&v42, 8);
    _Block_object_dispose(&v46, 8);
  }
}

- (id)description
{
  v3 = objc_opt_new();
  v4 = v3;
  flags = self->_flags;
  if (flags)
  {
    [v3 addObject:@"eliminateShadows"];
    flags = self->_flags;
    if ((flags & 4) == 0)
    {
LABEL_3:
      if ((flags & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else if ((*&self->_flags & 4) == 0)
  {
    goto LABEL_3;
  }

  [v4 addObject:@"disableLinkHypenation"];
  flags = self->_flags;
  if ((flags & 8) == 0)
  {
LABEL_4:
    if ((flags & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_10:
  [v4 addObject:@"explicitBaselineOffset"];
  if ((*&self->_flags & 2) != 0)
  {
LABEL_5:
    [v4 addObject:@"overallWritingDirectionFollowsLayoutDirection"];
  }

LABEL_6:
  v6 = [v4 componentsJoinedByString:{@", "}];

  semanticContentAttribute = self->_semanticContentAttribute;
  if (semanticContentAttribute > 4)
  {
    v8 = @"?";
  }

  else
  {
    v8 = off_1E712CE40[semanticContentAttribute];
  }

  v9 = MEMORY[0x1E696AEC0];
  v10 = objc_opt_class();
  synthesizedAttributes = [(_UILabelSynthesizedContent *)self synthesizedAttributes];
  synthesizedAttributedString = [(_UILabelSynthesizedContent *)self synthesizedAttributedString];
  v13 = [v9 stringWithFormat:@"<%@:%p attributes=%@ text=%@ semanticContentAttribute=%@ overrideTextColor=%@ flags=(%@)>", v10, self, synthesizedAttributes, synthesizedAttributedString, v8, self->_overrideTextColor, v6];

  return v13;
}

@end