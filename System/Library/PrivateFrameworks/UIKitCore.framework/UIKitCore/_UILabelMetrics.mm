@interface _UILabelMetrics
+ (id)intrinsicMetricsWithConfiguration:(id)configuration;
+ (id)metricsWithConfiguration:(id)configuration;
- ($00731F7035C2E13BA23DAA730FFC2B6B)_intrinsicSizeBaselineInfo;
- (BOOL)_hyphenationPossiblyDisabledIfURLsDetected;
- (BOOL)isEqual:(id)equal;
- (CGRect)_sourceRect;
- (CGRect)bounds;
- (CGRect)drawingBounds;
- (CGRect)intrinsicBounds;
- (CGSize)_intrinsicBaselineSize;
- (NSStringDrawingContext)_stringDrawingContext;
- (_UILabelMetrics)initWithCoder:(id)coder;
- (_UILabelSynthesizedContent)_synthesizedContent;
- (double)_lineSpacing;
- (double)lastLineBaselineOffsetFromBottom;
- (id)_initWithConfiguration:(id)configuration sourceRect:(CGRect)rect synthesizedContent:(id)content associatedScaledMetrics:(id)metrics;
- (id)_synthesizedAttributedText;
- (id)_synthesizedAttributes;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (int64_t)numberOfLines;
- (unint64_t)hash;
- (void)_calculateIfNeeded;
- (void)_calculateScaledMetricsUsingSize:(CGSize)size;
- (void)_calculatedSynthesizedContentIfNeeded;
- (void)_ensureSynthesizedContent;
- (void)draw;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _UILabelMetrics

+ (id)metricsWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v5 = [self alloc];
  v6 = [v5 _initWithConfiguration:configurationCopy sourceRect:0 synthesizedContent:0 associatedScaledMetrics:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];

  return v6;
}

+ (id)intrinsicMetricsWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v5 = configurationCopy;
  if (configurationCopy && (configurationCopy[170] & 0x80) != 0 && [configurationCopy numberOfLines] != 1)
  {
    [v5 preferredMaxLayoutWidth];
    v6 = v7;
  }

  else
  {
    v6 = 3.40282347e38;
  }

  v8 = [[self alloc] _initWithConfiguration:v5 sourceRect:0 synthesizedContent:0 associatedScaledMetrics:{0.0, 0.0, v6, 3.40282347e38}];

  return v8;
}

- (id)_initWithConfiguration:(id)configuration sourceRect:(CGRect)rect synthesizedContent:(id)content associatedScaledMetrics:(id)metrics
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  configurationCopy = configuration;
  contentCopy = content;
  metricsCopy = metrics;
  v24.receiver = self;
  v24.super_class = _UILabelMetrics;
  v16 = [(_UILabelMetrics *)&v24 init];
  if (v16)
  {
    v17 = [configurationCopy copy];
    configuration = v16->_configuration;
    v16->_configuration = v17;

    objc_storeStrong(&v16->_synthesizedContent, content);
    objc_storeStrong(&v16->_associatedScaledMetrics, metrics);
    v25.origin.x = x;
    v25.origin.y = y;
    v25.size.width = width;
    v25.size.height = height;
    IsEmpty = CGRectIsEmpty(v25);
    v20 = MEMORY[0x1E695F050];
    if (IsEmpty)
    {
      [configurationCopy bounds];
      x = v26.origin.x;
      y = v26.origin.y;
      width = v26.size.width;
      height = v26.size.height;
      if (CGRectEqualToRect(v26, *v20))
      {
        x = *MEMORY[0x1E695F058];
        y = *(MEMORY[0x1E695F058] + 8);
        width = *(MEMORY[0x1E695F058] + 16);
        height = *(MEMORY[0x1E695F058] + 24);
      }
    }

    v16->_sourceRect.origin.x = x;
    v16->_sourceRect.origin.y = y;
    v16->_sourceRect.size.width = width;
    v16->_sourceRect.size.height = height;
    origin = v20->origin;
    size = v20->size;
    v16->_bounds.origin = v20->origin;
    v16->_bounds.size = size;
    v16->_drawingRect.origin = origin;
    v16->_drawingRect.size = size;
    v16->_firstBaselineOffset = 0.0;
    v16->_lastBaselineOffset = 0.0;
    v16->_numberOfLines = -1;
    v16->_scaleFactor = 1.0;
  }

  return v16;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && ([(_UILabelMetrics *)self _calculateIfNeeded], [(_UILabelMetrics *)equalCopy _calculateIfNeeded], CGRectEqualToRect(self->_sourceRect, equalCopy->_sourceRect)) && CGRectEqualToRect(self->_bounds, equalCopy->_bounds) && CGRectEqualToRect(self->_idealBounds, equalCopy->_idealBounds) && CGRectEqualToRect(self->_drawingRect, equalCopy->_drawingRect) && self->_numberOfLines == equalCopy->_numberOfLines && self->_firstBaselineOffset == equalCopy->_firstBaselineOffset && self->_lastBaselineOffset == equalCopy->_lastBaselineOffset && self->_scaleFactor == equalCopy->_scaleFactor && ((*&equalCopy->_metricsFlags ^ *&self->_metricsFlags) & 0xC) == 0 && _deferringTokenEqualToToken(self->_textToUse, equalCopy->_textToUse))
    {
      v5 = _deferringTokenEqualToToken(self->_attributesToUse, equalCopy->_attributesToUse);
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (void)_calculateIfNeeded
{
  v197 = *MEMORY[0x1E69E9840];
  if (!self)
  {
    return;
  }

  if ((*(self + 232) & 1) == 0)
  {
    *(self + 232) |= 1u;
    _content = [(_UILabelConfiguration *)*(self + 8) _content];
    if (![_content length] && (*(self + 232) & 8) != 0)
    {
LABEL_168:

      return;
    }

    v2 = 3.40282347e38;
    v159 = *(self + 40);
    if (v159 >= 3.40282347e38)
    {
      *(self + 232) |= 0x10u;
      v3 = (self + 48);
    }

    else
    {
      v3 = (self + 48);
      v4 = *(self + 48);
      v5 = *(self + 232);
      v2 = 3.40282347e38;
      if (v4 < 3.40282347e38)
      {
        v6 = 0;
        *(self + 232) = v5 & 0xEF;
        v2 = v4;
        goto LABEL_14;
      }

      *(self + 232) = v5 | 0x10;
    }

    v6 = 1;
LABEL_14:
    v7 = *(self + 32);
    v154 = *(self + 24);
    v186 = 0;
    v187 = &v186;
    v188 = 0x3010000000;
    v190 = 0;
    v191 = 0;
    v189 = "";
    _internal = [(_UILabelConfiguration *)*(self + 8) _internal];
    _stringDrawingContext = [self _stringDrawingContext];
    numberOfLines = *(self + 8);
    if (numberOfLines)
    {
      v10 = 1048577;
      v11 = numberOfLines[20];
      if (v11)
      {
        v12 = *(v11 + 24);
        v13 = 1048705;
        if ((v12 & 2) == 0)
        {
          v13 = 1048577;
        }

        v10 = v13 | (v12 << 7) & 0x200 | (v12 << 7) & 0x400;
      }
    }

    else
    {
      v10 = 0;
    }

    v182 = 0;
    v183 = &v182;
    v184 = 0x2020000000;
    v185 = 0;
    v178 = 0;
    v179 = &v178;
    v180 = 0x2020000000;
    v181 = 0;
    v174 = 0;
    v175 = &v174;
    v176 = 0x2020000000;
    v177 = 0;
    if (_internal)
    {
      v161 = _internal[24] >> 7;
    }

    else
    {
      v161 = 0;
    }

    v149 = *(self + 24);
    v152 = *(self + 40);
    v153 = *(self + 32);
    v151 = *(self + 48);
    v170 = 0;
    v171 = &v170;
    v172 = 0x2020000000;
    if (numberOfLines)
    {
      numberOfLines = [numberOfLines numberOfLines];
    }

    v150 = v3;
    v173 = numberOfLines;
    [self _calculatedSynthesizedContentIfNeeded];
    v162 = *(self + 200);
    v156 = *(self + 208);
    v14 = *(self + 232);
    [_stringDrawingContext setWantsNumberOfLineFragments:1];
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __37___UILabelMetrics__calculateIfNeeded__block_invoke;
    aBlock[3] = &unk_1E70F6CF8;
    v169 = v161;
    aBlock[4] = self;
    aBlock[5] = &v182;
    aBlock[6] = &v178;
    aBlock[7] = &v174;
    v15 = _Block_copy(aBlock);
    v163[0] = MEMORY[0x1E69E9820];
    v163[1] = 3221225472;
    v163[2] = __37___UILabelMetrics__calculateIfNeeded__block_invoke_2;
    v163[3] = &unk_1E70F6D20;
    v167 = v161;
    v155 = v15;
    v163[4] = self;
    v164 = v155;
    v165 = &v186;
    v166 = &v170;
    v157 = _Block_copy(v163);
    if (*(self + 64))
    {
      v16 = v157;
      if ((v6 ^ 1 | v161))
      {
        goto LABEL_25;
      }
    }

    if (v171[3] != 1)
    {
      [_stringDrawingContext setWantsBaselineOffset:1];
      if ((v14 & 4) != 0)
      {
        [v162 boundingRectWithSize:v10 options:_stringDrawingContext context:{v159, v2}];
      }

      else
      {
        [v162 boundingRectWithSize:v10 options:v156 attributes:_stringDrawingContext context:{v159, v2}];
      }

      v25 = v187;
      *(v187 + 4) = v20;
      *(v25 + 5) = v21;
      if (!v6 || (v16 = v155, !*(self + 64)))
      {
        [_stringDrawingContext baselineOffset];
        *(v183 + 3) = v26;
        [_stringDrawingContext firstBaselineOffset];
        *(v175 + 3) = v27;
        goto LABEL_43;
      }

LABEL_25:
      v16[2]();
LABEL_43:
      if ((v6 & ((v14 & 4) >> 2)) == 1 && dyld_program_sdk_at_least())
      {
        paragraphStyle = [_content paragraphStyle];
        [paragraphStyle firstLineHeadIndent];
        if (v32 > 0.0)
        {
          if ([_stringDrawingContext numberOfLineFragments] == 1)
          {
            goto LABEL_54;
          }

          string = [v162 string];
          newlineCharacterSet = [MEMORY[0x1E696AB08] newlineCharacterSet];
          v35 = [string componentsSeparatedByCharactersInSet:newlineCharacterSet];
          v148 = string;

          v36 = [v35 count];
          if ([v35 count])
          {
            lastObject = [v35 lastObject];
            v38 = [lastObject length] == 0;

            v36 -= v38;
          }

          v39 = v171[3];
          numberOfLineFragments = [_stringDrawingContext numberOfLineFragments];
          v41 = 0x7FFFFFFFLL;
          if (v39)
          {
            v41 = v39;
          }

          if (v41 >= v36)
          {
            v41 = v36;
          }

          v42 = v41 == numberOfLineFragments;

          if (v42)
          {
LABEL_54:
            v43 = v187[4];
            [paragraphStyle firstLineHeadIndent];
            v45 = v43 + v44;
            if (v45 >= *(self + 40))
            {
              v45 = *(self + 40);
            }

            v187[4] = v45;
          }
        }
      }

      v46 = (v14 >> 2) & 1;
      v48 = v187[4];
      v47 = v187[5];
      if (v6)
      {
        if (*(self + 40) >= 3.40282347e38)
        {
          [self _calculateScaledMetricsUsingSize:{v187[4], v187[5]}];
          v49 = *(self + 64);
          if (v49)
          {
            [*(self + 64) _calculateIfNecessary];
            v50 = *(v49 + 80);

            v157[2]();
            v46 = 1;
            v162 = v50;
          }
        }
      }

      if ((*(self + 232) & 8) != 0)
      {
        v51 = 0;
        if (!v6)
        {
          goto LABEL_70;
        }
      }

      else
      {
        v51 = [_content length] == 0;
        if (!v6)
        {
          goto LABEL_70;
        }
      }

      v52 = *(self + 8);
      if (v52)
      {
        if ([v52 numberOfLines] == 1)
        {
          v53 = *(self + 8);
          if (!v53 || ([v53 adjustsFontSizeToFitWidth] & 1) == 0)
          {
            hasExplicitBaselineOffset = [*(self + 56) hasExplicitBaselineOffset];
            goto LABEL_71;
          }
        }
      }

LABEL_70:
      hasExplicitBaselineOffset = 1;
LABEL_71:
      v55 = 0.0;
      v56 = 0.0;
      if (!v51 && (v46 & 1) != 0 && hasExplicitBaselineOffset)
      {
        v196[0] = xmmword_18A678470;
        v57 = dyld_program_sdk_at_least();
        v58 = *off_1E70EC8D8;
        if (v57)
        {
          [v162 attribute:v58 atIndex:0 longestEffectiveRange:v196 inRange:{0, objc_msgSend(v162, "length")}];
        }

        else
        {
          [v162 attribute:*off_1E70EC8D8 atIndex:0 effectiveRange:v196];
        }
        v59 = ;
        v60 = *(&v196[0] + 1);
        if (v60 == [v162 length] || !v59)
        {
          if ((dyld_program_sdk_at_least() & 1) == 0 && v59)
          {
            [v59 floatValue];
            v56 = v70;
          }
        }

        else
        {
          v61 = [v162 mutableCopy];
          [v61 removeAttribute:v58 range:{0, objc_msgSend(v162, "length")}];
          [_stringDrawingContext setWantsBaselineOffset:1];
          cachesLayout = [_stringDrawingContext cachesLayout];
          [_stringDrawingContext setCachesLayout:0];
          [v61 boundingRectWithSize:v10 options:_stringDrawingContext context:{v159, 3.40282347e38}];
          v64 = v63;
          v66 = v65;
          [_stringDrawingContext baselineOffset];
          *(v183 + 3) = v67;
          [_stringDrawingContext firstBaselineOffset];
          *(v175 + 3) = v68;
          v69 = v187;
          *(v187 + 4) = v64;
          *(v69 + 5) = v66;
          [_stringDrawingContext setCachesLayout:cachesLayout];

          v56 = 0.0;
        }
      }

      v71 = *(self + 8);
      if (v71)
      {
        v55 = v71[19];
      }

      if (v6)
      {
        shadow = [v71 shadow];
        v73 = shadow;
        if (v48 > 0.0 && v47 > 0.0)
        {
          shadowColor = [shadow shadowColor];
          v75 = shadowColor == 0;

          if (!v75)
          {
            [v73 shadowOffset];
            if (v76 < 0.0)
            {
              v76 = -v76;
            }

            v48 = v48 + v76;
            v78 = -v77;
            if (v77 >= 0.0)
            {
              v78 = v77;
            }

            v47 = v47 + v78;
          }
        }

        UIRoundToScale(v7 + (v47 - v187[5]) * 0.5, v55);
        v80 = v79;
        v159 = v187[4];
        UICeilToScale(v48, v55);
        v152 = v81;
        UICeilToScale(v47, v55);
        v151 = v82;
      }

      else
      {
        UIRoundToScale(v7 + (v2 - v187[5]) * 0.5, v55);
        v80 = v83;
      }

      v84 = v80 - v56;
      v85 = v187[5];
      v86 = v84 + v183[3];
      UIRoundToScale(v86, v55);
      *(self + 80) = v87;
      UIRoundToScale(v87 - v86 + v84 + v175[3], v55);
      *(self + 72) = v88;
      if (*(self + 184) == -1)
      {
        *(self + 184) = [_stringDrawingContext numberOfLineFragments];
      }

      v89 = *(self + 80);
      v90 = v183[3];
      [self _lineSpacing];
      v92 = v91;
      v93 = v89 - v90;
      if (v91 != 0.0)
      {
        v94 = [v156 objectForKeyedSubscript:*off_1E70EC918];
        v95 = v94;
        if (v46)
        {
          v96 = v162;
          v97 = v95;
          v98 = [v96 length];
          if (v97)
          {
            v99 = [(NSAttributedString *)v96 _ui_fontsInRange:v98 usingDefaultFont:v97];
          }

          else
          {
            v102 = +[UILabel defaultFont];
            v99 = [(NSAttributedString *)v96 _ui_fontsInRange:v98 usingDefaultFont:v102];
          }

          v194 = 0u;
          v195 = 0u;
          v192 = 0u;
          v193 = 0u;
          v103 = v99;
          v104 = [v103 countByEnumeratingWithState:&v192 objects:v196 count:16];
          if (v104)
          {
            v105 = *v193;
            v101 = 0.0;
            do
            {
              for (i = 0; i != v104; ++i)
              {
                if (*v193 != v105)
                {
                  objc_enumerationMutation(v103);
                }

                [*(*(&v192 + 1) + 8 * i) lineHeight];
                if (v107 > v101)
                {
                  v101 = v107;
                }
              }

              v104 = [v103 countByEnumeratingWithState:&v192 objects:v196 count:16];
            }

            while (v104);
          }

          else
          {
            v101 = 0.0;
          }
        }

        else
        {
          [v94 lineHeight];
          v101 = v100;
        }

        UICeilToScale(v101, v55);
        v109 = v108;

        v93 = v93 - (v109 - v92);
      }

      v110 = *(self + 64);
      if (v110)
      {
        v111 = v6;
      }

      else
      {
        v111 = 1;
      }

      if ((v111 & 1) == 0)
      {
        if (v171[3] != 1)
        {
LABEL_126:
          if (v161)
          {
            v199.origin.x = v149;
            v199.origin.y = v153;
            v199.size.width = v152;
            v199.size.height = v151;
            MinY = CGRectGetMinY(v199);
            v200.origin.x = v149;
            v200.origin.y = v153;
            v200.size.width = v152;
            v200.size.height = v151;
            Height = CGRectGetHeight(v200);
            UICeilToScale(MinY + (Height - v187[5]) * 0.5, v55);
            v93 = v115;
            UICeilToScale(v187[5], v55);
          }

          else
          {
            [v110 _calculateIfNecessary];
            v117 = v110[4];
            v118 = *(self + 64);
            if (v118)
            {
              [*(self + 64) _calculateIfNecessary];
              v116 = *(v118 + 32);
            }

            else
            {
              v116 = 0.0;
            }

            v93 = v93 + (v85 - v117) * 0.5;
          }

          v85 = v116;
          goto LABEL_133;
        }

        if (_internal && (v112 = (*(_internal + 6) >> 8) & 3) != 0)
        {
          if (v112 == 1)
          {
            goto LABEL_126;
          }
        }

        else
        {
          v93 = v93 + v183[3] - v179[3];
        }
      }

LABEL_133:
      *(self + 120) = v154;
      v119 = (self + 120);
      *(self + 88) = v154;
      *(self + 96) = v93;
      *(self + 104) = v159;
      *(self + 112) = v85;
      *(self + 128) = v93;
      *(self + 136) = v159;
      *(self + 144) = v85;
      UIRoundToScale(v154, v55);
      *(self + 120) = v120;
      UIRoundToScale(*(self + 128) + (*(self + 144) - *(self + 112)) * 0.5, v55);
      *(self + 128) = v121;
      if (!v6)
      {
        goto LABEL_145;
      }

      if (![_content length])
      {
        v47 = 0.0;
        v48 = 0.0;
      }

      if (*(self + 40) >= 3.40282347e38)
      {
        goto LABEL_145;
      }

      +[UIView _enableRTL];
      if ([_content isAttributed])
      {
        _synthesizedAttributedText = [self _synthesizedAttributedText];
        _ui_resolvedTextAlignment = [_synthesizedAttributedText _ui_resolvedTextAlignment];
      }

      else
      {
        _synthesizedAttributedText = [self _synthesizedAttributes];
        v124 = [_synthesizedAttributedText objectForKeyedSubscript:*off_1E70EC988];
        _ui_resolvedTextAlignment = [v124 _ui_resolvedTextAlignment];
      }

      if (_ui_resolvedTextAlignment == 1)
      {
        MaxX = CGRectGetMaxX(*(self + 24));
        UIRoundToScale((MaxX - *(self + 136)) * 0.5, v55);
        v125 = v127 + *v119;
      }

      else
      {
        if (_ui_resolvedTextAlignment != 2)
        {
LABEL_145:
          v128 = dyld_program_sdk_at_least();
          v129 = *(self + 136);
          v130 = *(self + 40);
          if (v129 >= v130)
          {
            v129 = *(self + 40);
          }

          if (v128)
          {
            UICeilToScale(v129, v55);
            *(self + 136) = v131;
            v132 = *(self + 144);
            if (v132 >= *(self + 48))
            {
              v132 = *(self + 48);
            }

            UICeilToScale(v132, v55);
            *(self + 144) = v133;
            v134 = *(self + 40);
            if (v48 < v134)
            {
              v134 = v48;
            }

            UICeilToScale(v134, v55);
            v136 = v135;
            v137 = *v150;
            if (v47 < *v150)
            {
              v137 = v47;
            }

            UICeilToScale(v137, v55);
          }

          else
          {
            v139 = ceil(v129);
            v140 = *(self + 144);
            v141 = *(self + 48);
            if (v140 >= v141)
            {
              v140 = *(self + 48);
            }

            *(self + 136) = v139;
            *(self + 144) = ceil(v140);
            if (v48 >= v130)
            {
              v142 = v130;
            }

            else
            {
              v142 = v48;
            }

            v136 = ceil(v142);
            if (v47 >= v141)
            {
              v143 = v141;
            }

            else
            {
              v143 = v47;
            }

            v138 = ceil(v143);
          }

          *(self + 152) = *v119;
          *(self + 168) = v136;
          *(self + 176) = v138;
          v144 = *(self + 64);
          if (v144)
          {
            [*(self + 64) _calculateIfNecessary];
            v145 = *(v144 + 40);
          }

          else
          {
            v145 = 1.0;
          }

          *(self + 192) = v145;
          layout = [_stringDrawingContext layout];
          v147 = *(self + 216);
          *(self + 216) = layout;

          _Block_object_dispose(&v170, 8);
          _Block_object_dispose(&v174, 8);
          _Block_object_dispose(&v178, 8);
          _Block_object_dispose(&v182, 8);

          _Block_object_dispose(&v186, 8);
          goto LABEL_168;
        }

        v125 = *(self + 120) + CGRectGetMaxX(*(self + 24)) - *(self + 136);
      }

      *v119 = v125;
      goto LABEL_145;
    }

    [_stringDrawingContext setWantsBaselineOffset:1];
    if ((v14 & 4) != 0)
    {
      [v162 boundingRectWithSize:v10 options:_stringDrawingContext context:{v159, 3.40282347e38}];
      v17 = v187;
      *(v187 + 4) = v18;
      *(v17 + 5) = v19;
      if (!v6)
      {
        goto LABEL_41;
      }
    }

    else
    {
      if (!v6)
      {
        [&stru_1EFB14550 boundingRectWithSize:v10 options:v156 attributes:_stringDrawingContext context:{3.40282347e38, 3.40282347e38}];
        v28 = v187;
        v187[4] = v159;
        *(v28 + 5) = v29;
        goto LABEL_41;
      }

      [v162 boundingRectWithSize:v10 options:v156 attributes:_stringDrawingContext context:{v159, 3.40282347e38}];
      v22 = v187;
      *(v187 + 4) = v23;
      *(v22 + 5) = v24;
    }

    if (*(self + 64))
    {
      v155[2]();
LABEL_42:
      *(self + 184) = 1;
      goto LABEL_43;
    }

LABEL_41:
    [_stringDrawingContext baselineOffset];
    *(v183 + 3) = v30;
    *(v175 + 3) = v30;
    goto LABEL_42;
  }

  [self _calculatedSynthesizedContentIfNeeded];
}

- (unint64_t)hash
{
  v2 = self->_numberOfLines ^ ((self->_scaleFactor * 100.0) << 8) ^ ((self->_firstBaselineOffset * 100.0) << 16);
  v3 = (self->_lastBaselineOffset * 100.0);
  return v2 ^ [(_UILabelConfiguration *)self->_configuration hash]^ (v3 << 24);
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[_UILabelMetrics alloc] _initWithConfiguration:self->_configuration sourceRect:self->_synthesizedContent synthesizedContent:self->_associatedScaledMetrics associatedScaledMetrics:self->_sourceRect.origin.x, self->_sourceRect.origin.y, self->_sourceRect.size.width, self->_sourceRect.size.height];
  origin = self->_bounds.origin;
  *(v4 + 136) = self->_bounds.size;
  *(v4 + 120) = origin;
  v6 = self->_idealBounds.origin;
  *(v4 + 168) = self->_idealBounds.size;
  *(v4 + 152) = v6;
  *(v4 + 23) = self->_numberOfLines;
  *(v4 + 9) = *&self->_firstBaselineOffset;
  *(v4 + 10) = *&self->_lastBaselineOffset;
  v7 = self->_drawingRect.origin;
  *(v4 + 104) = self->_drawingRect.size;
  *(v4 + 88) = v7;
  *(v4 + 24) = *&self->_scaleFactor;
  objc_storeStrong(v4 + 26, self->_attributesToUse);
  objc_storeStrong(v4 + 25, self->_textToUse);
  v4[232] = self->_metricsFlags;
  return v4;
}

- (_UILabelMetrics)initWithCoder:(id)coder
{
  v38[5] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v37.receiver = self;
  v37.super_class = _UILabelMetrics;
  v5 = [(_UILabelMetrics *)&v37 init];
  if (v5)
  {
    [coderCopy decodeRectForKey:@"UILabelMetrics_sourceRect"];
    v5->_sourceRect.origin.x = v6;
    v5->_sourceRect.origin.y = v7;
    v5->_sourceRect.size.width = v8;
    v5->_sourceRect.size.height = v9;
    [coderCopy decodeRectForKey:@"UILabelMetrics_bounds"];
    v5->_bounds.origin.x = v10;
    v5->_bounds.origin.y = v11;
    v5->_bounds.size.width = v12;
    v5->_bounds.size.height = v13;
    [coderCopy decodeRectForKey:@"UILabelMetrics_idealBounds"];
    v5->_idealBounds.origin.x = v14;
    v5->_idealBounds.origin.y = v15;
    v5->_idealBounds.size.width = v16;
    v5->_idealBounds.size.height = v17;
    v5->_numberOfLines = [coderCopy decodeIntegerForKey:@"UILabelMetrics_numberOfLines"];
    [coderCopy decodeFloatForKey:@"UILabelMetrics_firstBaselineOffset"];
    v5->_firstBaselineOffset = v18;
    [coderCopy decodeFloatForKey:@"UILabelMetrics_lastBaselineOffset"];
    v5->_lastBaselineOffset = v19;
    [coderCopy decodeRectForKey:@"UILabelMetrics_drawingRect"];
    v5->_drawingRect.origin.x = v20;
    v5->_drawingRect.origin.y = v21;
    v5->_drawingRect.size.width = v22;
    v5->_drawingRect.size.height = v23;
    [coderCopy decodeFloatForKey:@"UILabelMetrics_scaleFactor"];
    v5->_scaleFactor = v24;
    v25 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"UILabelMetrics_configuration"];
    configuration = v5->_configuration;
    v5->_configuration = v25;

    v27 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"UILabelMetrics_attributesToUse"];
    attributesToUse = v5->_attributesToUse;
    v5->_attributesToUse = v27;

    v29 = MEMORY[0x1E695DFD8];
    v38[0] = objc_opt_class();
    v38[1] = objc_opt_class();
    v38[2] = objc_opt_class();
    v38[3] = objc_opt_class();
    v38[4] = objc_opt_class();
    v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:v38 count:5];
    v31 = [v29 setWithArray:v30];
    v32 = [coderCopy decodeObjectOfClasses:v31 forKey:@"UILabelMetrics_textToUse"];
    textToUse = v5->_textToUse;
    v5->_textToUse = v32;

    *&v5->_metricsFlags = *&v5->_metricsFlags & 0xFE | [coderCopy decodeBoolForKey:@"UILabelMetrics_calculated"];
    if ([coderCopy decodeBoolForKey:@"UILabelMetrics_textToUseIsAttributed"])
    {
      v34 = 4;
    }

    else
    {
      v34 = 0;
    }

    *&v5->_metricsFlags = *&v5->_metricsFlags & 0xFB | v34;
    if ([coderCopy decodeBoolForKey:@"UILabelMetrics_forDrawing"])
    {
      v35 = 8;
    }

    else
    {
      v35 = 0;
    }

    *&v5->_metricsFlags = *&v5->_metricsFlags & 0xF7 | v35;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  x = self->_sourceRect.origin.x;
  y = self->_sourceRect.origin.y;
  width = self->_sourceRect.size.width;
  height = self->_sourceRect.size.height;
  coderCopy = coder;
  [coderCopy encodeRect:@"UILabelMetrics_sourceRect" forKey:{x, y, width, height}];
  [coderCopy encodeRect:@"UILabelMetrics_bounds" forKey:{self->_bounds.origin.x, self->_bounds.origin.y, self->_bounds.size.width, self->_bounds.size.height}];
  [coderCopy encodeRect:@"UILabelMetrics_idealBounds" forKey:{self->_idealBounds.origin.x, self->_idealBounds.origin.y, self->_idealBounds.size.width, self->_idealBounds.size.height}];
  [coderCopy encodeInteger:self->_numberOfLines forKey:@"UILabelMetrics_numberOfLines"];
  firstBaselineOffset = self->_firstBaselineOffset;
  *&firstBaselineOffset = firstBaselineOffset;
  [coderCopy encodeFloat:@"UILabelMetrics_firstBaselineOffset" forKey:firstBaselineOffset];
  lastBaselineOffset = self->_lastBaselineOffset;
  *&lastBaselineOffset = lastBaselineOffset;
  [coderCopy encodeFloat:@"UILabelMetrics_lastBaselineOffset" forKey:lastBaselineOffset];
  [coderCopy encodeRect:@"UILabelMetrics_drawingRect" forKey:{self->_drawingRect.origin.x, self->_drawingRect.origin.y, self->_drawingRect.size.width, self->_drawingRect.size.height}];
  scaleFactor = self->_scaleFactor;
  *&scaleFactor = scaleFactor;
  [coderCopy encodeFloat:@"UILabelMetrics_scaleFactor" forKey:scaleFactor];
  [coderCopy encodeObject:self->_configuration forKey:@"UILabelMetrics_configuration"];
  [coderCopy encodeObject:self->_attributesToUse forKey:@"UILabelMetrics_attributesToUse"];
  [coderCopy encodeObject:self->_textToUse forKey:@"UILabelMetrics_textToUse"];
  [coderCopy encodeBool:*&self->_metricsFlags & 1 forKey:@"UILabelMetrics_calculated"];
  [coderCopy encodeBool:(*&self->_metricsFlags >> 2) & 1 forKey:@"UILabelMetrics_textToUseIsAttributed"];
  [coderCopy encodeBool:(*&self->_metricsFlags >> 3) & 1 forKey:@"UILabelMetrics_forDrawing"];
}

- (int64_t)numberOfLines
{
  [(_UILabelMetrics *)self _calculateIfNeeded];
  result = self->_numberOfLines;
  if (result == -1)
  {
    stringDrawingContext = self->_stringDrawingContext;

    return [(NSStringDrawingContext *)stringDrawingContext numberOfLineFragments];
  }

  return result;
}

- (double)lastLineBaselineOffsetFromBottom
{
  [(_UILabelMetrics *)self _calculateIfNeeded];
  [(_UILabelMetrics *)self _intrinsicBaselineSize];
  return v3 - self->_lastBaselineOffset;
}

- (CGRect)_sourceRect
{
  x = self->_sourceRect.origin.x;
  y = self->_sourceRect.origin.y;
  width = self->_sourceRect.size.width;
  height = self->_sourceRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)drawingBounds
{
  [(_UILabelMetrics *)self _calculateIfNeeded];
  x = self->_drawingRect.origin.x;
  y = self->_drawingRect.origin.y;
  width = self->_drawingRect.size.width;
  height = self->_drawingRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)bounds
{
  [(_UILabelMetrics *)self _calculateIfNeeded];
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

- (CGRect)intrinsicBounds
{
  [(_UILabelMetrics *)self _calculateIfNeeded];
  x = self->_idealBounds.origin.x;
  y = self->_idealBounds.origin.y;
  width = self->_idealBounds.size.width;
  height = self->_idealBounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGSize)_intrinsicBaselineSize
{
  if ((*&self->_metricsFlags & 0x10) != 0)
  {
    height = self->_idealBounds.size.height;
    if (height == 0.0)
    {
      p_size = &self->_bounds.size;
      height = self->_bounds.size.height;
    }

    else
    {
      p_size = &self->_idealBounds.size;
    }
  }

  else
  {
    p_size = &self->_sourceRect.size;
    height = self->_sourceRect.size.height;
  }

  width = p_size->width;
  result.height = height;
  result.width = width;
  return result;
}

- ($00731F7035C2E13BA23DAA730FFC2B6B)_intrinsicSizeBaselineInfo
{
  [(_UILabelMetrics *)self _calculateIfNeeded];
  origin = self->_sourceRect.origin;
  *&retstr->var0 = *&self->_firstBaselineOffset;
  retstr->var2.origin = origin;
  retstr->var2.size = self->_sourceRect.size;
  v7 = 152;
  if (self->_idealBounds.size.height == 0.0)
  {
    v7 = 120;
  }

  v8 = self + v7;
  v9 = *(v8 + 1);
  retstr->var4.origin = *v8;
  retstr->var3 = self->_numberOfLines;
  retstr->var4.size = v9;
  return result;
}

- (NSStringDrawingContext)_stringDrawingContext
{
  stringDrawingContext = self->_stringDrawingContext;
  if (!stringDrawingContext)
  {
    v4 = objc_opt_new();
    numberOfLines = [(_UILabelConfiguration *)self->_configuration numberOfLines];
    [(NSStringDrawingContext *)v4 setWrapsForTruncationMode:numberOfLines != 1];
    [(NSStringDrawingContext *)v4 setMaximumNumberOfLines:numberOfLines];
    [(NSStringDrawingContext *)v4 setCachesLayout:1];
    [(NSStringDrawingContext *)v4 setLayout:self->_layout];
    _internal = [(_UILabelConfiguration *)&self->_configuration->super.isa _internal];
    if (_internal)
    {
      v7 = _internal[6];

      if ((v7 & 0x10) != 0)
      {
        [(NSStringDrawingContext *)v4 setUsesSimpleTextEffects:1];
      }
    }

    _internal2 = [(_UILabelConfiguration *)&self->_configuration->super.isa _internal];
    _cuiCatalog = [(_UILabelConfigurationInternal *)_internal2 _cuiCatalog];

    if (_cuiCatalog)
    {
      [(NSStringDrawingContext *)v4 setCuiCatalog:_cuiCatalog];
    }

    _internal3 = [(_UILabelConfiguration *)&self->_configuration->super.isa _internal];
    _cuiStyleEffectConfiguration = [(_UILabelConfigurationInternal *)_internal3 _cuiStyleEffectConfiguration];

    if (_cuiStyleEffectConfiguration)
    {
      [(NSStringDrawingContext *)v4 setCuiStyleEffects:_cuiStyleEffectConfiguration];
      if ([_cuiStyleEffectConfiguration useSimplifiedEffect])
      {
        [(NSStringDrawingContext *)v4 setUsesSimpleTextEffects:1];
      }
    }

    v12 = self->_stringDrawingContext;
    self->_stringDrawingContext = v4;

    stringDrawingContext = self->_stringDrawingContext;
  }

  return stringDrawingContext;
}

- (BOOL)_hyphenationPossiblyDisabledIfURLsDetected
{
  _content = [(_UILabelConfiguration *)&self->_configuration->super.isa _content];
  paragraphStyle = [_content paragraphStyle];

  [paragraphStyle hyphenationFactor];
  if (v5 <= 0.0)
  {
    LOBYTE(v7) = 0;
  }

  else
  {
    _internal = [(_UILabelConfiguration *)&self->_configuration->super.isa _internal];
    if (_internal)
    {
      v7 = (_internal[24] >> 6) & 1;
    }

    else
    {
      LOBYTE(v7) = 0;
    }
  }

  return v7;
}

- (void)_ensureSynthesizedContent
{
  if (!self->_synthesizedContent)
  {
    v24 = v4;
    v25 = v3;
    v26 = v2;
    v9 = [_UILabelMutableSynthesizedContent alloc];
    _content = [(_UILabelConfiguration *)&self->_configuration->super.isa _content];
    v11 = [(_UILabelMutableSynthesizedContent *)v9 initWithContent:_content];

    _internal = [(_UILabelConfiguration *)&self->_configuration->super.isa _internal];
    v13 = _internal;
    if (_internal)
    {
      v14 = (*(_internal + 24) >> 6) & 1;
    }

    else
    {
      v14 = 0;
    }

    [(_UILabelSynthesizedContent *)v11 setDisableLinkHypenation:v14, v5, v24, v25, v26, v6];

    configuration = self->_configuration;
    if (configuration)
    {
      semanticContentAttribute = [(_UILabelConfiguration *)configuration semanticContentAttribute];
    }

    else
    {
      semanticContentAttribute = 0;
    }

    [(_UILabelSynthesizedContent *)v11 setSemanticContentAttribute:semanticContentAttribute];
    _internal2 = [(_UILabelConfiguration *)&self->_configuration->super.isa _internal];
    v18 = _internal2;
    if (_internal2)
    {
      v19 = (*(_internal2 + 24) >> 5) & 1;
    }

    else
    {
      v19 = 0;
    }

    [(_UILabelSynthesizedContent *)v11 setOverallWritingDirectionFollowsLayoutDirection:v19];

    _resolvedTextColor = [(_UILabelConfiguration *)&self->_configuration->super.isa _resolvedTextColor];
    [(_UILabelSynthesizedContent *)v11 setOverrideTextColor:_resolvedTextColor];

    v21 = self->_configuration;
    if (v21)
    {
      v22 = [(_UILabelConfiguration *)v21 isEnabled]^ 1;
    }

    else
    {
      v22 = 1;
    }

    [(_UILabelSynthesizedContent *)v11 setEliminateShadows:v22];
    synthesizedContent = self->_synthesizedContent;
    self->_synthesizedContent = v11;
  }
}

- (id)_synthesizedAttributedText
{
  [(_UILabelMetrics *)self _ensureSynthesizedContent];
  synthesizedContent = self->_synthesizedContent;

  return [(_UILabelSynthesizedContent *)synthesizedContent synthesizedAttributedString];
}

- (id)_synthesizedAttributes
{
  [(_UILabelMetrics *)self _ensureSynthesizedContent];
  synthesizedContent = self->_synthesizedContent;

  return [(_UILabelSynthesizedContent *)synthesizedContent synthesizedAttributes];
}

- (double)_lineSpacing
{
  _internal = [(_UILabelConfiguration *)&self->_configuration->super.isa _internal];
  if (_internal)
  {
    v3 = _internal[1];
  }

  else
  {
    v3 = 0.0;
  }

  return v3;
}

- (_UILabelSynthesizedContent)_synthesizedContent
{
  [(_UILabelMetrics *)self _ensureSynthesizedContent];
  synthesizedContent = self->_synthesizedContent;

  return synthesizedContent;
}

- (void)_calculateScaledMetricsUsingSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  scaledMetrics = self->_scaledMetrics;
  configuration = self->_configuration;
  if (configuration && [(_UILabelConfiguration *)configuration adjustsFontSizeToFitWidth]|| self->_associatedScaledMetrics)
  {
    v8 = [(_UILabelConfiguration *)self->_configuration copy];
    _synthesizedAttributedText = [(_UILabelMetrics *)self _synthesizedAttributedText];
    [(_UILabelScaledMetrics *)v8 setAttributedText:_synthesizedAttributedText];

    height = [[_UILabelScaledMetrics alloc] initWithConfiguration:v8 size:self->_associatedScaledMetrics associatedScaledMetrics:width, height];
    v11 = self->_scaledMetrics;
    self->_scaledMetrics = height;

    v12 = self->_scaledMetrics;
    if (!v12)
    {
      v15 = 0;
      goto LABEL_10;
    }

    [(_UILabelScaledMetrics *)self->_scaledMetrics _calculateIfNecessary];
    actualScaleFactor = v12->_actualScaleFactor;
    if (actualScaleFactor <= 0.0 || actualScaleFactor >= 1.0)
    {
      v15 = self->_scaledMetrics;
LABEL_10:
      self->_scaledMetrics = 0;

      goto LABEL_14;
    }

    if ((*&self->_metricsFlags & 0x10) == 0)
    {
      scaledAttributedText = [(_UILabelScaledMetrics *)&self->_scaledMetrics->super.isa scaledAttributedText];
      textToUse = self->_textToUse;
      self->_textToUse = scaledAttributedText;

      *&self->_metricsFlags |= 4u;
    }
  }

  else
  {
    v8 = self->_scaledMetrics;
    self->_scaledMetrics = 0;
  }

LABEL_14:

  if ((scaledMetrics != 0) == (self->_scaledMetrics == 0))
  {
    stringDrawingContext = self->_stringDrawingContext;

    [(NSStringDrawingContext *)stringDrawingContext setLayout:0];
  }
}

- (void)_calculatedSynthesizedContentIfNeeded
{
  if ((*&self->_metricsFlags & 2) != 0)
  {
    return;
  }

  *&self->_metricsFlags |= 2u;
  _content = [(_UILabelConfiguration *)&self->_configuration->super.isa _content];
  _synthesizedAttributes = [(_UILabelMetrics *)self _synthesizedAttributes];
  if ((*&self->_metricsFlags & 8) == 0 && ![_content length])
  {
    v6 = objc_alloc(MEMORY[0x1E696AAB0]);
    v7 = MEMORY[0x1E695DF20];
    font = [(_UILabelConfiguration *)self->_configuration font];
    v9 = font;
    if (!font)
    {
      v9 = +[UILabel defaultFont];
    }

    v10 = [v7 dictionaryWithObject:v9 forKey:*off_1E70EC918];
    string = [v6 initWithString:0x1EFBB7A10 attributes:v10];

    if (!font)
    {
    }

    if (string)
    {
LABEL_15:
      v4 = 4;
      goto LABEL_16;
    }
  }

  if (([_content isNil] & 1) == 0)
  {
    if (([_content isAttributed] & 1) == 0 && !-[_UILabelMetrics _hyphenationPossiblyDisabledIfURLsDetected](self, "_hyphenationPossiblyDisabledIfURLsDetected"))
    {
      string = [_content string];
      v4 = 0;
      goto LABEL_16;
    }

    string = [(_UILabelMetrics *)self _synthesizedAttributedText];
    goto LABEL_15;
  }

  v4 = 0;
  string = &stru_1EFB14550;
LABEL_16:
  textToUse = self->_textToUse;
  self->_textToUse = string;
  v12 = string;

  *&self->_metricsFlags = *&self->_metricsFlags & 0xFB | v4;
  attributesToUse = self->_attributesToUse;
  self->_attributesToUse = _synthesizedAttributes;
  v14 = _synthesizedAttributes;

  layout = self->_layout;
  self->_layout = 0;

  [(_UILabelMetrics *)self _calculateScaledMetricsUsingSize:self->_sourceRect.size.width, self->_sourceRect.size.height];
}

- (void)draw
{
  selfCopy = self;
  if (self)
  {
    metricsFlags = self->_metricsFlags;
    if ((metricsFlags & 8) != 0)
    {
LABEL_5:
      *&selfCopy->_metricsFlags = metricsFlags | 8;
      selfCopy2 = selfCopy;
      goto LABEL_6;
    }

    _content = [(_UILabelConfiguration *)&self->_configuration->super.isa _content];
    v5 = [_content length];

    if (v5 >= 1)
    {
      metricsFlags = selfCopy->_metricsFlags;
      goto LABEL_5;
    }

    self = [[_UILabelMetrics alloc] _initWithConfiguration:selfCopy->_configuration sourceRect:0 synthesizedContent:selfCopy->_associatedScaledMetrics associatedScaledMetrics:selfCopy->_sourceRect.origin.x, selfCopy->_sourceRect.origin.y, selfCopy->_sourceRect.size.width, selfCopy->_sourceRect.size.height];
    *&self->_metricsFlags |= 8u;
  }

  selfCopy2 = self;
  if (self != selfCopy)
  {
    [(_UILabelMetrics *)self draw];
    goto LABEL_18;
  }

LABEL_6:
  [(_UILabelMetrics *)selfCopy _calculateIfNeeded];
  if (selfCopy->_textToUse)
  {
    x = selfCopy->_drawingRect.origin.x;
    y = selfCopy->_drawingRect.origin.y;
    width = selfCopy->_drawingRect.size.width;
    height = selfCopy->_drawingRect.size.height;
    _stringDrawingContext = [(_UILabelMetrics *)selfCopy _stringDrawingContext];
    configuration = selfCopy->_configuration;
    if (configuration)
    {
      v12 = 1048577;
      internal = configuration->_internal;
      if (internal)
      {
        configurationFlags = internal->_configurationFlags;
        v15 = 1048705;
        if ((*&configurationFlags & 2) == 0)
        {
          v15 = 1048577;
        }

        v12 = v15 | (*&configurationFlags << 7) & 0x200 | (*&configurationFlags << 7) & 0x400;
      }
    }

    else
    {
      v12 = 0;
    }

    if ([(_UILabelConfiguration *)configuration numberOfLines]== 1)
    {
      [_stringDrawingContext setMinimumScaleFactor:0.0];
    }

    textToUse = selfCopy->_textToUse;
    if ((*&selfCopy->_metricsFlags & 4) != 0)
    {
      [textToUse drawWithRect:v12 options:_stringDrawingContext context:{x, y, width, height}];
    }

    else
    {
      [textToUse drawWithRect:v12 options:selfCopy->_attributesToUse attributes:_stringDrawingContext context:{x, y, width, height}];
    }
  }

LABEL_18:
}

- (id)description
{
  if (*&self->_metricsFlags)
  {
    v3 = &stru_1EFB14550;
  }

  else
  {
    v3 = @"{Calculated} ";
  }

  if ((*&self->_metricsFlags & 2) != 0)
  {
    v4 = &stru_1EFB14550;
  }

  else
  {
    v4 = @"{ContentSynthesized} ";
  }

  v5 = v4;
  v6 = v3;
  [(_UILabelMetrics *)self _calculateIfNeeded];
  v7 = MEMORY[0x1E696AEC0];
  v8 = objc_opt_class();
  v9 = NSStringFromCGRect(self->_sourceRect);
  v10 = NSStringFromCGRect(self->_bounds);
  v11 = NSStringFromCGRect(self->_drawingRect);
  v12 = NSStringFromCGRect(self->_idealBounds);
  [(_UILabelMetrics *)self firstLineBaselineOffsetFromTop];
  v14 = v13;
  [(_UILabelMetrics *)self lastLineBaselineOffsetFromBottom];
  v16 = [v7 stringWithFormat:@"<%@:%p %@%@sourceBounds=%@ bounds=%@ drawingBounds=%@ idealBounds=%@ firstLineBaseline=%f lastLineBaseline=%f numberOfLines=%ld scaleFactor=%f>", v8, self, v6, v5, v9, v10, v11, v12, v14, v15, self->_numberOfLines, *&self->_scaleFactor];

  return v16;
}

@end