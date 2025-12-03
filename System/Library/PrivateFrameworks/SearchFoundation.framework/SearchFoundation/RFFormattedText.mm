@interface RFFormattedText
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (RFFormattedText)initWithCoder:(id)coder;
- (RFFormattedText)initWithProtobuf:(id)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)setInline_image_element:(id)inline_image_element;
- (void)setText:(id)text;
@end

@implementation RFFormattedText

- (unint64_t)hash
{
  text = [(RFFormattedText *)self text];
  v3 = [text hash];
  inline_image_element = [(RFFormattedText *)self inline_image_element];
  v4 = [inline_image_element hash] ^ v3;
  color = [(RFFormattedText *)self color];
  v5 = [color hash];
  is_italic = [(RFFormattedText *)self is_italic];
  v6 = v4 ^ v5 ^ [is_italic hash];
  is_bold = [(RFFormattedText *)self is_bold];
  v7 = [is_bold hash];
  text_encapsulation = [(RFFormattedText *)self text_encapsulation];
  v9 = v7 ^ [text_encapsulation hash];
  is_highlighted = [(RFFormattedText *)self is_highlighted];
  v11 = v6 ^ v9 ^ [is_highlighted hash];
  background_color = [(RFFormattedText *)self background_color];
  v13 = [background_color hash];
  attributions = [(RFFormattedText *)self attributions];
  v15 = v13 ^ [attributions hash];
  highlighted_substrings = [(RFFormattedText *)self highlighted_substrings];
  v17 = v15 ^ [highlighted_substrings hash];
  font = [(RFFormattedText *)self font];
  v26 = v11 ^ v17 ^ [font hash];
  is_underlined = [(RFFormattedText *)self is_underlined];
  v20 = [is_underlined hash];
  engageable = [(RFFormattedText *)self engageable];
  v22 = v20 ^ [engageable hash];
  v23 = v22 ^ [(RFFormattedText *)self weight];
  v24 = v23 ^ [(RFFormattedText *)self design];

  return v26 ^ v24;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v19 = 1;
    goto LABEL_88;
  }

  if (![(RFFormattedText *)equalCopy isMemberOfClass:objc_opt_class()])
  {
    v19 = 0;
    goto LABEL_88;
  }

  v5 = equalCopy;
  text = [(RFFormattedText *)self text];
  text2 = [(RFFormattedText *)v5 text];
  v134 = text2 == 0;
  v135 = text != 0;
  if (v135 == v134)
  {
    v10 = 0;
    v11 = 0;
    memset(v132, 0, sizeof(v132));
    v12 = 0;
    memset(v133, 0, sizeof(v133));
    v13 = 0;
    memset(v130, 0, sizeof(v130));
    v131 = 0;
    v14 = 0;
    v15 = 0;
    memset(v138, 0, 20);
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    goto LABEL_15;
  }

  text3 = [(RFFormattedText *)self text];
  v8 = text3 != 0;
  v129 = text3;
  if (text3)
  {
    text4 = [(RFFormattedText *)self text];
    text5 = [(RFFormattedText *)v5 text];
    v124 = text4;
    if (![text4 isEqual:?])
    {
      v10 = 0;
      v11 = 0;
      memset(v133, 0, 24);
      memset(v132, 0, sizeof(v132));
      v12 = 0;
      v13 = 0;
      memset(v130, 0, sizeof(v130));
      v131 = 0;
      v14 = 0;
      v15 = 0;
      memset(v138, 0, 20);
      v16 = 0;
      v17 = 0;
      v18 = 0;
      v19 = 0;
      *&v133[24] = 1;
      goto LABEL_15;
    }
  }

  inline_image_element = [(RFFormattedText *)self inline_image_element];
  inline_image_element2 = [(RFFormattedText *)v5 inline_image_element];
  *&v133[24] = v8;
  if ((inline_image_element != 0) == (inline_image_element2 == 0))
  {
    v10 = 0;
    v11 = 0;
    memset(v133, 0, 24);
    memset(v132, 0, 44);
    v12 = 0;
    v13 = 0;
    memset(v130, 0, sizeof(v130));
    v131 = 0;
    v14 = 0;
    v15 = 0;
    memset(v138, 0, 20);
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    HIDWORD(v132[5]) = 1;
    goto LABEL_15;
  }

  inline_image_element3 = [(RFFormattedText *)self inline_image_element];
  v21 = inline_image_element3 != 0;
  v122 = inline_image_element3;
  if (inline_image_element3)
  {
    inline_image_element4 = [(RFFormattedText *)self inline_image_element];
    inline_image_element5 = [(RFFormattedText *)v5 inline_image_element];
    v119 = inline_image_element4;
    if (![inline_image_element4 isEqual:?])
    {
      v10 = 0;
      v11 = 0;
      memset(v132, 0, 40);
      v12 = 0;
      v13 = 0;
      memset(v130, 0, sizeof(v130));
      v131 = 0;
      v14 = 0;
      v15 = 0;
      memset(v138, 0, 20);
      v16 = 0;
      v17 = 0;
      v18 = 0;
      v19 = 0;
      memset(v133, 0, 20);
      v132[5] = 0x100000001;
      *&v133[20] = 1;
      goto LABEL_15;
    }

    *&v133[20] = v21;
  }

  else
  {
    *&v133[20] = 0;
  }

  color = [(RFFormattedText *)self color];
  color2 = [(RFFormattedText *)v5 color];
  if ((color != 0) == (color2 == 0))
  {
    v10 = 0;
    v11 = 0;
    memset(v132, 0, 32);
    v12 = 0;
    v13 = 0;
    memset(v130, 0, sizeof(v130));
    v131 = 0;
    v14 = 0;
    v15 = 0;
    memset(v138, 0, 20);
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    memset(v133, 0, 20);
    v132[5] = 0x100000001;
    v132[4] = 1;
    goto LABEL_15;
  }

  color3 = [(RFFormattedText *)self color];
  v36 = color3 != 0;
  v117 = color3;
  if (color3)
  {
    color4 = [(RFFormattedText *)self color];
    color5 = [(RFFormattedText *)v5 color];
    v114 = color4;
    if (![color4 isEqual:?])
    {
      *&v133[8] = 0;
      v10 = 0;
      v11 = 0;
      *v133 = 0;
      memset(v132, 0, 32);
      v12 = 0;
      v13 = 0;
      memset(v130, 0, sizeof(v130));
      v131 = 0;
      v14 = 0;
      v15 = 0;
      memset(v138, 0, 20);
      v16 = 0;
      v17 = 0;
      v18 = 0;
      v19 = 0;
      v132[5] = 0x100000001;
      v132[4] = 0x100000001;
      *&v133[16] = 1;
      goto LABEL_15;
    }

    *&v133[16] = v36;
  }

  else
  {
    *&v133[16] = 0;
  }

  is_italic = [(RFFormattedText *)self is_italic];
  is_italic2 = [(RFFormattedText *)v5 is_italic];
  if ((is_italic != 0) == (is_italic2 == 0))
  {
    *&v133[8] = 0;
    v10 = 0;
    v11 = 0;
    *v133 = 0;
    memset(v132, 0, 24);
    v12 = 0;
    v13 = 0;
    memset(v130, 0, sizeof(v130));
    v131 = 0;
    v14 = 0;
    v15 = 0;
    memset(v138, 0, 20);
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v132[5] = 0x100000001;
    v132[4] = 0x100000001;
    v132[3] = 1;
    goto LABEL_15;
  }

  is_italic3 = [(RFFormattedText *)self is_italic];
  v39 = is_italic3 != 0;
  v112 = is_italic3;
  if (is_italic3)
  {
    is_italic4 = [(RFFormattedText *)self is_italic];
    is_italic5 = [(RFFormattedText *)v5 is_italic];
    v109 = is_italic4;
    if (![is_italic4 isEqual:?])
    {
      *&v133[4] = 0;
      v10 = 0;
      v11 = 0;
      memset(v132, 0, 24);
      v12 = 0;
      v13 = 0;
      memset(v130, 0, sizeof(v130));
      v131 = 0;
      v14 = 0;
      v15 = 0;
      memset(v138, 0, 20);
      v16 = 0;
      v17 = 0;
      v18 = 0;
      v19 = 0;
      *v133 = 0;
      v132[5] = 0x100000001;
      v132[4] = 0x100000001;
      v132[3] = 0x100000001;
      *&v133[12] = 1;
      goto LABEL_15;
    }

    *&v133[12] = v39;
  }

  else
  {
    *&v133[12] = 0;
  }

  is_bold = [(RFFormattedText *)self is_bold];
  is_bold2 = [(RFFormattedText *)v5 is_bold];
  if ((is_bold != 0) == (is_bold2 == 0))
  {
    *&v133[4] = 0;
    v10 = 0;
    v11 = 0;
    v132[0] = 0;
    v12 = 0;
    v13 = 0;
    memset(v130, 0, sizeof(v130));
    v132[1] = 0;
    v131 = 0;
    v14 = 0;
    v15 = 0;
    memset(v138, 0, 20);
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    *v133 = 0;
    v132[5] = 0x100000001;
    v132[4] = 0x100000001;
    v132[3] = 0x100000001;
    v132[2] = 1;
    goto LABEL_15;
  }

  is_bold3 = [(RFFormattedText *)self is_bold];
  v42 = is_bold3 != 0;
  v107 = is_bold3;
  if (is_bold3)
  {
    is_bold4 = [(RFFormattedText *)self is_bold];
    is_bold5 = [(RFFormattedText *)v5 is_bold];
    v104 = is_bold4;
    if (![is_bold4 isEqual:?])
    {
      v10 = 0;
      v11 = 0;
      *v133 = 0;
      v132[0] = 0;
      v12 = 0;
      v13 = 0;
      memset(v130, 0, sizeof(v130));
      v132[1] = 0;
      v131 = 0;
      v14 = 0;
      v15 = 0;
      memset(v138, 0, 20);
      v16 = 0;
      v17 = 0;
      v18 = 0;
      v19 = 0;
      v132[5] = 0x100000001;
      v132[4] = 0x100000001;
      v132[3] = 0x100000001;
      v132[2] = 0x100000001;
      *&v133[8] = 1;
      goto LABEL_15;
    }

    *&v133[8] = v42;
  }

  else
  {
    *&v133[8] = 0;
  }

  text_encapsulation = [(RFFormattedText *)self text_encapsulation];
  text_encapsulation2 = [(RFFormattedText *)v5 text_encapsulation];
  if ((text_encapsulation != 0) == (text_encapsulation2 == 0))
  {
    v11 = 0;
    *v133 = 0;
    v132[0] = 0;
    v12 = 0;
    v13 = 0;
    memset(v130, 0, sizeof(v130));
    v132[1] = 0;
    v131 = 0;
    v14 = 0;
    v15 = 0;
    memset(v138, 0, 20);
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v132[5] = 0x100000001;
    v132[4] = 0x100000001;
    v132[3] = 0x100000001;
    v132[2] = 0x100000001;
    v10 = 1;
    goto LABEL_15;
  }

  text_encapsulation3 = [(RFFormattedText *)self text_encapsulation];
  v45 = text_encapsulation3 != 0;
  v102 = text_encapsulation3;
  if (text_encapsulation3)
  {
    text_encapsulation4 = [(RFFormattedText *)self text_encapsulation];
    text_encapsulation5 = [(RFFormattedText *)v5 text_encapsulation];
    v99 = text_encapsulation4;
    if (![text_encapsulation4 isEqual:?])
    {
      v132[0] = 0;
      v12 = 0;
      v13 = 0;
      memset(v130, 0, sizeof(v130));
      v132[1] = 0;
      v131 = 0;
      v14 = 0;
      v15 = 0;
      memset(v138, 0, 20);
      v16 = 0;
      v17 = 0;
      v18 = 0;
      v19 = 0;
      *v133 = 0x100000000;
      v132[5] = 0x100000001;
      v132[4] = 0x100000001;
      v132[3] = 0x100000001;
      v132[2] = 0x100000001;
      v10 = 1;
      v11 = 1;
      goto LABEL_15;
    }

    *&v133[4] = v45;
  }

  else
  {
    *&v133[4] = 0;
  }

  is_highlighted = [(RFFormattedText *)self is_highlighted];
  is_highlighted2 = [(RFFormattedText *)v5 is_highlighted];
  if ((is_highlighted != 0) == (is_highlighted2 == 0))
  {
    v12 = 0;
    v13 = 0;
    memset(v130, 0, sizeof(v130));
    *(v132 + 4) = 0;
    v131 = 0;
    v14 = 0;
    v15 = 0;
    memset(v138, 0, 20);
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    *v133 = 0;
    v132[5] = 0x100000001;
    v132[4] = 0x100000001;
    v132[3] = 0x100000001;
    HIDWORD(v132[1]) = 0;
    v132[2] = 0x100000001;
    v10 = 1;
    v11 = 1;
    LODWORD(v132[0]) = 1;
    goto LABEL_15;
  }

  is_highlighted3 = [(RFFormattedText *)self is_highlighted];
  v48 = is_highlighted3 != 0;
  v97 = is_highlighted3;
  if (is_highlighted3)
  {
    is_highlighted4 = [(RFFormattedText *)self is_highlighted];
    is_highlighted5 = [(RFFormattedText *)v5 is_highlighted];
    v94 = is_highlighted4;
    if (![is_highlighted4 isEqual:?])
    {
      v13 = 0;
      memset(v130, 0, sizeof(v130));
      *(v132 + 4) = 0;
      v14 = 0;
      v15 = 0;
      memset(v138, 0, 20);
      v16 = 0;
      v17 = 0;
      v18 = 0;
      v19 = 0;
      v132[5] = 0x100000001;
      v132[4] = 0x100000001;
      v132[3] = 0x100000001;
      HIDWORD(v132[1]) = 0;
      v132[2] = 0x100000001;
      v10 = 1;
      v11 = 1;
      v131 = 0;
      LODWORD(v132[0]) = 1;
      v12 = 1;
      *v133 = 1;
      goto LABEL_15;
    }

    *v133 = v48;
  }

  else
  {
    *v133 = 0;
  }

  background_color = [(RFFormattedText *)self background_color];
  background_color2 = [(RFFormattedText *)v5 background_color];
  if ((background_color != 0) == (background_color2 == 0))
  {
    v13 = 0;
    *v130 = 0;
    *(v132 + 4) = 0;
    v14 = 0;
    v15 = 0;
    memset(v138, 0, 20);
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v132[5] = 0x100000001;
    v132[4] = 0x100000001;
    v132[3] = 0x100000001;
    HIDWORD(v132[1]) = 0;
    v132[2] = 0x100000001;
    v10 = 1;
    v11 = 1;
    v131 = 0;
    LODWORD(v132[0]) = 1;
    v12 = 1;
    *&v130[8] = 1;
    goto LABEL_15;
  }

  background_color3 = [(RFFormattedText *)self background_color];
  LODWORD(v138[2]) = background_color3 != 0;
  v92 = background_color3;
  v65 = v5;
  if (background_color3)
  {
    background_color4 = [(RFFormattedText *)self background_color];
    background_color5 = [(RFFormattedText *)v5 background_color];
    v89 = background_color4;
    if (![background_color4 isEqual:?])
    {
      *v130 = 0;
      *(v132 + 4) = 0;
      v138[1] = 0;
      v14 = 0;
      v138[0] = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v18 = 0;
      v19 = 0;
      v132[5] = 0x100000001;
      v132[4] = 0x100000001;
      v132[3] = 0x100000001;
      HIDWORD(v132[1]) = 0;
      v132[2] = 0x100000001;
      v10 = 1;
      v11 = 1;
      v131 = 0;
      LODWORD(v132[0]) = 1;
      v12 = 1;
      *&v130[8] = 1;
      v13 = 1;
      LODWORD(v138[2]) = 1;
LABEL_162:
      v5 = v65;
      goto LABEL_15;
    }
  }

  attributions = [(RFFormattedText *)self attributions];
  attributions2 = [(RFFormattedText *)v5 attributions];
  if ((attributions != 0) == (attributions2 == 0))
  {
    *(v132 + 4) = 0;
    v138[1] = 0;
    v14 = 0;
    v138[0] = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v132[5] = 0x100000001;
    v132[4] = 0x100000001;
    v132[3] = 0x100000001;
    HIDWORD(v132[1]) = 0;
    v132[2] = 0x100000001;
    v10 = 1;
    v11 = 1;
    v131 = 0;
    LODWORD(v132[0]) = 1;
    v12 = 1;
    *&v130[8] = 1;
    v13 = 1;
    *v130 = 1;
    goto LABEL_162;
  }

  attributions3 = [(RFFormattedText *)self attributions];
  HIDWORD(v138[1]) = attributions3 != 0;
  v87 = attributions3;
  if (attributions3)
  {
    attributions4 = [(RFFormattedText *)self attributions];
    attributions5 = [(RFFormattedText *)v65 attributions];
    v84 = attributions4;
    if (![attributions4 isEqual:?])
    {
      v132[1] = 0;
      *(v138 + 4) = 0;
      v14 = 0;
      v15 = 0;
      LODWORD(v138[0]) = 0;
      v16 = 0;
      v17 = 0;
      v18 = 0;
      v19 = 0;
      v132[5] = 0x100000001;
      v132[4] = 0x100000001;
      v132[3] = 0x100000001;
      v132[2] = 0x100000001;
      v10 = 1;
      v11 = 1;
      v131 = 0;
      v132[0] = 0x100000001;
      v12 = 1;
      *&v130[8] = 1;
      v13 = 1;
      *v130 = 1;
      HIDWORD(v138[1]) = 1;
      goto LABEL_162;
    }
  }

  highlighted_substrings = [(RFFormattedText *)self highlighted_substrings];
  highlighted_substrings2 = [(RFFormattedText *)v65 highlighted_substrings];
  if ((highlighted_substrings != 0) == (highlighted_substrings2 == 0))
  {
    v132[1] = 0;
    *(v138 + 4) = 0;
    v14 = 0;
    v15 = 0;
    LODWORD(v138[0]) = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v132[5] = 0x100000001;
    v132[4] = 0x100000001;
    v132[3] = 0x100000001;
    v132[2] = 0x100000001;
    v10 = 1;
    v11 = 1;
    v131 = 0;
    v132[0] = 0x100000001;
    v12 = 1;
    *&v130[8] = 1;
    v13 = 1;
    *v130 = 0x100000001;
    goto LABEL_162;
  }

  highlighted_substrings3 = [(RFFormattedText *)self highlighted_substrings];
  LODWORD(v138[1]) = highlighted_substrings3 != 0;
  v82 = highlighted_substrings3;
  if (highlighted_substrings3)
  {
    highlighted_substrings4 = [(RFFormattedText *)self highlighted_substrings];
    highlighted_substrings5 = [(RFFormattedText *)v65 highlighted_substrings];
    v79 = highlighted_substrings4;
    if (![highlighted_substrings4 isEqual:?])
    {
      v14 = 0;
      v138[0] = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v18 = 0;
      v19 = 0;
      v132[5] = 0x100000001;
      v132[4] = 0x100000001;
      v132[3] = 0x100000001;
      v132[2] = 0x100000001;
      v10 = 1;
      v11 = 1;
      v131 = 0;
      v132[0] = 0x100000001;
      v12 = 1;
      *&v130[8] = 1;
      v13 = 1;
      *v130 = 0x100000001;
      v132[1] = 1;
      LODWORD(v138[1]) = 1;
      goto LABEL_162;
    }
  }

  font = [(RFFormattedText *)self font];
  font2 = [(RFFormattedText *)v65 font];
  if ((font != 0) == (font2 == 0))
  {
    v14 = 0;
    v138[0] = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v132[5] = 0x100000001;
    v132[4] = 0x100000001;
    v132[3] = 0x100000001;
    v132[2] = 0x100000001;
    v10 = 1;
    v11 = 1;
    v132[0] = 0x100000001;
    v12 = 1;
    *&v130[8] = 1;
    v13 = 1;
    *v130 = 0x100000001;
    v132[1] = 1;
    v131 = 1;
    goto LABEL_162;
  }

  font3 = [(RFFormattedText *)self font];
  HIDWORD(v138[0]) = font3 != 0;
  v77 = font3;
  if (font3)
  {
    font4 = [(RFFormattedText *)self font];
    font5 = [(RFFormattedText *)v65 font];
    v74 = font4;
    if (![font4 isEqual:?])
    {
      v15 = 0;
      v138[0] = 0x100000000;
      v16 = 0;
      v17 = 0;
      v18 = 0;
      v19 = 0;
      v132[5] = 0x100000001;
      v132[4] = 0x100000001;
      v132[3] = 0x100000001;
      v132[2] = 0x100000001;
      v10 = 1;
      v11 = 1;
      v132[0] = 0x100000001;
      v12 = 1;
      *&v130[8] = 1;
      v13 = 1;
      *v130 = 0x100000001;
      v132[1] = 1;
      v131 = 1;
      v14 = 1;
      goto LABEL_162;
    }
  }

  is_underlined = [(RFFormattedText *)self is_underlined];
  is_underlined2 = [(RFFormattedText *)v65 is_underlined];
  if ((is_underlined != 0) == (is_underlined2 == 0))
  {
    v15 = 0;
    LODWORD(v138[0]) = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v132[5] = 0x100000001;
    v132[4] = 0x100000001;
    v132[3] = 0x100000001;
    v132[2] = 0x100000001;
    v10 = 1;
    v11 = 1;
    v132[0] = 0x100000001;
    v12 = 1;
    *&v130[8] = 1;
    v13 = 1;
    *v130 = 0x100000001;
    v132[1] = 0x100000001;
    v131 = 1;
    v14 = 1;
    goto LABEL_162;
  }

  is_underlined3 = [(RFFormattedText *)self is_underlined];
  LODWORD(v138[0]) = is_underlined3 != 0;
  v72 = is_underlined3;
  if (is_underlined3)
  {
    is_underlined4 = [(RFFormattedText *)self is_underlined];
    is_underlined5 = [(RFFormattedText *)v65 is_underlined];
    v69 = is_underlined4;
    if (![is_underlined4 isEqual:?])
    {
      v16 = 0;
      v17 = 0;
      v18 = 0;
      v19 = 0;
      v132[5] = 0x100000001;
      v132[4] = 0x100000001;
      v132[3] = 0x100000001;
      v132[2] = 0x100000001;
      v10 = 1;
      v11 = 1;
      v132[0] = 0x100000001;
      v12 = 1;
      *&v130[8] = 1;
      v13 = 1;
      *v130 = 0x100000001;
      v132[1] = 0x100000001;
      v131 = 1;
      v14 = 1;
      v15 = 1;
      LODWORD(v138[0]) = 1;
      goto LABEL_162;
    }
  }

  engageable = [(RFFormattedText *)self engageable];
  engageable2 = [(RFFormattedText *)v65 engageable];
  if ((engageable != 0) == (engageable2 == 0))
  {
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v132[5] = 0x100000001;
    v132[4] = 0x100000001;
    v132[3] = 0x100000001;
    v132[2] = 0x100000001;
    v10 = 1;
    v11 = 1;
    v132[0] = 0x100000001;
    v12 = 1;
    *&v130[8] = 1;
    v13 = 1;
    *v130 = 0x100000001;
    v132[1] = 0x100000001;
    v131 = 1;
    v14 = 1;
    v15 = 1;
    v16 = 1;
    goto LABEL_162;
  }

  engageable3 = [(RFFormattedText *)self engageable];
  v128 = engageable3 != 0;
  v67 = engageable3;
  if (engageable3)
  {
    engageable4 = [(RFFormattedText *)self engageable];
    [(RFFormattedText *)v65 engageable];
    v64 = v66 = engageable4;
    if (![engageable4 isEqual:?])
    {
      v19 = 0;
      v132[5] = 0x100000001;
      v132[4] = 0x100000001;
      v132[3] = 0x100000001;
      v132[2] = 0x100000001;
      v10 = 1;
      v11 = 1;
      v132[0] = 0x100000001;
      v12 = 1;
      *&v130[8] = 1;
      v13 = 1;
      *v130 = 0x100000001;
      v132[1] = 0x100000001;
      v131 = 1;
      v14 = 1;
      v15 = 1;
      v16 = 1;
      v17 = 1;
      v18 = 1;
LABEL_166:
      v5 = v65;
      goto LABEL_167;
    }
  }

  weight = [(RFFormattedText *)self weight];
  if (weight != [(RFFormattedText *)v65 weight])
  {
    v19 = 0;
    v132[5] = 0x100000001;
    v132[4] = 0x100000001;
    v132[3] = 0x100000001;
    v132[2] = 0x100000001;
    v10 = 1;
    v11 = 1;
    v132[0] = 0x100000001;
    v12 = 1;
    *&v130[8] = 1;
    v13 = 1;
    *v130 = 0x100000001;
    v132[1] = 0x100000001;
    v131 = 1;
    v14 = 1;
    v15 = 1;
    v16 = 1;
    v17 = 1;
    v18 = v128;
    goto LABEL_166;
  }

  design = [(RFFormattedText *)self design];
  v5 = v65;
  v19 = design == [(RFFormattedText *)v65 design];
  v132[5] = 0x100000001;
  v132[4] = 0x100000001;
  v132[3] = 0x100000001;
  v132[2] = 0x100000001;
  v10 = 1;
  v11 = 1;
  v132[0] = 0x100000001;
  v12 = 1;
  *&v130[8] = 1;
  v13 = 1;
  *v130 = 0x100000001;
  v132[1] = 0x100000001;
  v131 = 1;
  v14 = 1;
  v15 = 1;
  v16 = 1;
  v17 = 1;
  v18 = v128;
LABEL_167:
  v6 = v64;
LABEL_15:
  if (v18)
  {
    v127 = equalCopy;
    v23 = v19;
    v24 = v5;
    v25 = v13;
    v26 = v14;
    v27 = v10;
    v28 = v12;
    v29 = v16;
    v30 = v15;
    v31 = v11;
    v32 = v17;

    v33 = v32;
    v11 = v31;
    v15 = v30;
    v16 = v29;
    v12 = v28;
    v10 = v27;
    v14 = v26;
    v13 = v25;
    v5 = v24;
    v19 = v23;
    equalCopy = v127;
    if (!v33)
    {
      goto LABEL_17;
    }
  }

  else if (!v17)
  {
LABEL_17:
    if (!v16)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  if (v16)
  {
LABEL_18:
  }

LABEL_19:
  if (LODWORD(v138[0]))
  {
  }

  if (v15)
  {
  }

  if (HIDWORD(v132[1]))
  {
  }

  if (HIDWORD(v138[0]))
  {
  }

  if (v14)
  {
  }

  if (v131)
  {
  }

  if (LODWORD(v138[1]))
  {
  }

  if (LODWORD(v132[1]))
  {
  }

  if (*&v130[4])
  {
  }

  if (HIDWORD(v138[1]))
  {
  }

  if (HIDWORD(v132[0]))
  {
  }

  if (*v130)
  {
  }

  if (LODWORD(v138[2]))
  {
  }

  if (v13)
  {
  }

  if (*&v130[8])
  {
  }

  if (*v133)
  {
  }

  if (v12)
  {
  }

  if (LODWORD(v132[0]))
  {
  }

  if (*&v133[4])
  {

    if (!v11)
    {
      goto LABEL_57;
    }

LABEL_93:

    if (!v10)
    {
      goto LABEL_59;
    }

    goto LABEL_58;
  }

  if (v11)
  {
    goto LABEL_93;
  }

LABEL_57:
  if (v10)
  {
LABEL_58:
  }

LABEL_59:
  if (*&v133[8])
  {
  }

  if (HIDWORD(v132[2]))
  {
  }

  if (LODWORD(v132[2]))
  {
  }

  if (*&v133[12])
  {
  }

  if (HIDWORD(v132[3]))
  {
  }

  if (LODWORD(v132[3]))
  {
  }

  if (*&v133[16])
  {
  }

  if (HIDWORD(v132[4]))
  {
  }

  if (LODWORD(v132[4]))
  {
  }

  if (*&v133[20])
  {
  }

  if (LODWORD(v132[5]))
  {
  }

  if (HIDWORD(v132[5]))
  {
  }

  if (*&v133[24])
  {
  }

  if (v135 != v134)
  {
  }

LABEL_88:
  return v19;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  if ([(RFFormattedText *)self hasText])
  {
    text = [(RFFormattedText *)self text];
    v6 = [text copy];
    [v4 setText:v6];
  }

  if ([(RFFormattedText *)self hasInline_image_element])
  {
    inline_image_element = [(RFFormattedText *)self inline_image_element];
    v8 = [inline_image_element copy];
    [v4 setInline_image_element:v8];
  }

  color = [(RFFormattedText *)self color];
  v10 = [color copy];
  [v4 setColor:v10];

  is_italic = [(RFFormattedText *)self is_italic];
  v12 = [is_italic copy];
  [v4 setIs_italic:v12];

  is_bold = [(RFFormattedText *)self is_bold];
  v14 = [is_bold copy];
  [v4 setIs_bold:v14];

  text_encapsulation = [(RFFormattedText *)self text_encapsulation];
  v16 = [text_encapsulation copy];
  [v4 setText_encapsulation:v16];

  is_highlighted = [(RFFormattedText *)self is_highlighted];
  v18 = [is_highlighted copy];
  [v4 setIs_highlighted:v18];

  background_color = [(RFFormattedText *)self background_color];
  v20 = [background_color copy];
  [v4 setBackground_color:v20];

  attributions = [(RFFormattedText *)self attributions];
  v22 = [attributions copy];
  [v4 setAttributions:v22];

  highlighted_substrings = [(RFFormattedText *)self highlighted_substrings];
  v24 = [highlighted_substrings copy];
  [v4 setHighlighted_substrings:v24];

  font = [(RFFormattedText *)self font];
  v26 = [font copy];
  [v4 setFont:v26];

  is_underlined = [(RFFormattedText *)self is_underlined];
  v28 = [is_underlined copy];
  [v4 setIs_underlined:v28];

  engageable = [(RFFormattedText *)self engageable];
  v30 = [engageable copy];
  [v4 setEngageable:v30];

  [v4 setWeight:{-[RFFormattedText weight](self, "weight")}];
  [v4 setDesign:{-[RFFormattedText design](self, "design")}];
  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBRFFormattedText alloc] initWithFacade:self];
  jsonData = [(_SFPBRFFormattedText *)v2 jsonData];

  return jsonData;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBRFFormattedText alloc] initWithFacade:self];
  dictionaryRepresentation = [(_SFPBRFFormattedText *)v2 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v6 = [[_SFPBRFFormattedText alloc] initWithFacade:self];
  data = [(_SFPBRFFormattedText *)v6 data];
  [coderCopy encodeObject:data forKey:@"_backingStore"];
}

- (RFFormattedText)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBRFFormattedText alloc] initWithData:v5];
  v7 = [(RFFormattedText *)self initWithProtobuf:v6];

  return v7;
}

- (void)setInline_image_element:(id)inline_image_element
{
  *&self->_has |= 2u;
  objc_storeStrong(&self->_inline_image_element, inline_image_element);
  inline_image_elementCopy = inline_image_element;
  *&self->_has &= ~1u;
  text = self->_text;
  self->_text = 0;
}

- (void)setText:(id)text
{
  *&self->_has |= 1u;
  objc_storeStrong(&self->_text, text);
  textCopy = text;
  *&self->_has &= ~2u;
  inline_image_element = self->_inline_image_element;
  self->_inline_image_element = 0;
}

- (RFFormattedText)initWithProtobuf:(id)protobuf
{
  v78 = *MEMORY[0x1E69E9840];
  protobufCopy = protobuf;
  v75.receiver = self;
  v75.super_class = RFFormattedText;
  v5 = [(RFFormattedText *)&v75 init];
  if (v5)
  {
    text = [protobufCopy text];

    if (text)
    {
      text2 = [protobufCopy text];
      [(RFFormattedText *)v5 setText:text2];
    }

    inline_image_element = [protobufCopy inline_image_element];

    if (inline_image_element)
    {
      v9 = [RFImageElement alloc];
      inline_image_element2 = [protobufCopy inline_image_element];
      v11 = [(RFImageElement *)v9 initWithProtobuf:inline_image_element2];
      [(RFFormattedText *)v5 setInline_image_element:v11];
    }

    color = [protobufCopy color];

    if (color)
    {
      v13 = [RFColor alloc];
      color2 = [protobufCopy color];
      v15 = [(RFColor *)v13 initWithProtobuf:color2];
      [(RFFormattedText *)v5 setColor:v15];
    }

    is_italic = [protobufCopy is_italic];

    if (is_italic)
    {
      v17 = [RFOptionalBool alloc];
      is_italic2 = [protobufCopy is_italic];
      v19 = [(RFOptionalBool *)v17 initWithProtobuf:is_italic2];
      [(RFFormattedText *)v5 setIs_italic:v19];
    }

    is_bold = [protobufCopy is_bold];

    if (is_bold)
    {
      v21 = [RFOptionalBool alloc];
      is_bold2 = [protobufCopy is_bold];
      v23 = [(RFOptionalBool *)v21 initWithProtobuf:is_bold2];
      [(RFFormattedText *)v5 setIs_bold:v23];
    }

    text_encapsulation = [protobufCopy text_encapsulation];

    if (text_encapsulation)
    {
      v25 = [RFTextEncapsulation alloc];
      text_encapsulation2 = [protobufCopy text_encapsulation];
      v27 = [(RFTextEncapsulation *)v25 initWithProtobuf:text_encapsulation2];
      [(RFFormattedText *)v5 setText_encapsulation:v27];
    }

    is_highlighted = [protobufCopy is_highlighted];

    if (is_highlighted)
    {
      v29 = [RFOptionalBool alloc];
      is_highlighted2 = [protobufCopy is_highlighted];
      v31 = [(RFOptionalBool *)v29 initWithProtobuf:is_highlighted2];
      [(RFFormattedText *)v5 setIs_highlighted:v31];
    }

    background_color = [protobufCopy background_color];

    if (background_color)
    {
      v33 = [RFColor alloc];
      background_color2 = [protobufCopy background_color];
      v35 = [(RFColor *)v33 initWithProtobuf:background_color2];
      [(RFFormattedText *)v5 setBackground_color:v35];
    }

    attributions = [protobufCopy attributions];
    if (attributions)
    {
      v37 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v37 = 0;
    }

    v73 = 0u;
    v74 = 0u;
    v71 = 0u;
    v72 = 0u;
    attributions2 = [protobufCopy attributions];
    v39 = [attributions2 countByEnumeratingWithState:&v71 objects:v77 count:16];
    if (v39)
    {
      v40 = v39;
      v41 = *v72;
      do
      {
        for (i = 0; i != v40; ++i)
        {
          if (*v72 != v41)
          {
            objc_enumerationMutation(attributions2);
          }

          v43 = [[RFAttribution alloc] initWithProtobuf:*(*(&v71 + 1) + 8 * i)];
          if (v43)
          {
            [v37 addObject:v43];
          }
        }

        v40 = [attributions2 countByEnumeratingWithState:&v71 objects:v77 count:16];
      }

      while (v40);
    }

    [(RFFormattedText *)v5 setAttributions:v37];
    highlighted_substrings = [protobufCopy highlighted_substrings];
    if (highlighted_substrings)
    {
      v45 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v45 = 0;
    }

    v69 = 0u;
    v70 = 0u;
    v67 = 0u;
    v68 = 0u;
    highlighted_substrings2 = [protobufCopy highlighted_substrings];
    v47 = [highlighted_substrings2 countByEnumeratingWithState:&v67 objects:v76 count:16];
    if (v47)
    {
      v48 = v47;
      v49 = *v68;
      do
      {
        for (j = 0; j != v48; ++j)
        {
          if (*v68 != v49)
          {
            objc_enumerationMutation(highlighted_substrings2);
          }

          v51 = [[RFHighlightedSubstring alloc] initWithProtobuf:*(*(&v67 + 1) + 8 * j)];
          if (v51)
          {
            [v45 addObject:v51];
          }
        }

        v48 = [highlighted_substrings2 countByEnumeratingWithState:&v67 objects:v76 count:16];
      }

      while (v48);
    }

    [(RFFormattedText *)v5 setHighlighted_substrings:v45];
    font = [protobufCopy font];

    if (font)
    {
      v53 = [RFFont alloc];
      font2 = [protobufCopy font];
      v55 = [(RFFont *)v53 initWithProtobuf:font2];
      [(RFFormattedText *)v5 setFont:v55];
    }

    is_underlined = [protobufCopy is_underlined];

    if (is_underlined)
    {
      v57 = [RFOptionalBool alloc];
      is_underlined2 = [protobufCopy is_underlined];
      v59 = [(RFOptionalBool *)v57 initWithProtobuf:is_underlined2];
      [(RFFormattedText *)v5 setIs_underlined:v59];
    }

    engageable = [protobufCopy engageable];

    if (engageable)
    {
      v61 = [RFEngageable alloc];
      engageable2 = [protobufCopy engageable];
      v63 = [(RFEngageable *)v61 initWithProtobuf:engageable2];
      [(RFFormattedText *)v5 setEngageable:v63];
    }

    if ([protobufCopy weight])
    {
      -[RFFormattedText setWeight:](v5, "setWeight:", [protobufCopy weight]);
    }

    if ([protobufCopy design])
    {
      -[RFFormattedText setDesign:](v5, "setDesign:", [protobufCopy design]);
    }

    v64 = v5;
  }

  v65 = *MEMORY[0x1E69E9840];
  return v5;
}

@end