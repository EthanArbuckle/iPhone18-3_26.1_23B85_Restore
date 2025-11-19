@interface RFFormattedText
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (RFFormattedText)initWithCoder:(id)a3;
- (RFFormattedText)initWithProtobuf:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)setInline_image_element:(id)a3;
- (void)setText:(id)a3;
@end

@implementation RFFormattedText

- (unint64_t)hash
{
  v31 = [(RFFormattedText *)self text];
  v3 = [v31 hash];
  v30 = [(RFFormattedText *)self inline_image_element];
  v4 = [v30 hash] ^ v3;
  v29 = [(RFFormattedText *)self color];
  v5 = [v29 hash];
  v28 = [(RFFormattedText *)self is_italic];
  v6 = v4 ^ v5 ^ [v28 hash];
  v27 = [(RFFormattedText *)self is_bold];
  v7 = [v27 hash];
  v8 = [(RFFormattedText *)self text_encapsulation];
  v9 = v7 ^ [v8 hash];
  v10 = [(RFFormattedText *)self is_highlighted];
  v11 = v6 ^ v9 ^ [v10 hash];
  v12 = [(RFFormattedText *)self background_color];
  v13 = [v12 hash];
  v14 = [(RFFormattedText *)self attributions];
  v15 = v13 ^ [v14 hash];
  v16 = [(RFFormattedText *)self highlighted_substrings];
  v17 = v15 ^ [v16 hash];
  v18 = [(RFFormattedText *)self font];
  v26 = v11 ^ v17 ^ [v18 hash];
  v19 = [(RFFormattedText *)self is_underlined];
  v20 = [v19 hash];
  v21 = [(RFFormattedText *)self engageable];
  v22 = v20 ^ [v21 hash];
  v23 = v22 ^ [(RFFormattedText *)self weight];
  v24 = v23 ^ [(RFFormattedText *)self design];

  return v26 ^ v24;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v19 = 1;
    goto LABEL_88;
  }

  if (![(RFFormattedText *)v4 isMemberOfClass:objc_opt_class()])
  {
    v19 = 0;
    goto LABEL_88;
  }

  v5 = v4;
  v137 = [(RFFormattedText *)self text];
  v136 = [(RFFormattedText *)v5 text];
  v134 = v136 == 0;
  v135 = v137 != 0;
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

  v7 = [(RFFormattedText *)self text];
  v8 = v7 != 0;
  v129 = v7;
  if (v7)
  {
    v9 = [(RFFormattedText *)self text];
    v123 = [(RFFormattedText *)v5 text];
    v124 = v9;
    if (![v9 isEqual:?])
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

  v126 = [(RFFormattedText *)self inline_image_element];
  v125 = [(RFFormattedText *)v5 inline_image_element];
  *&v133[24] = v8;
  if ((v126 != 0) == (v125 == 0))
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

  v20 = [(RFFormattedText *)self inline_image_element];
  v21 = v20 != 0;
  v122 = v20;
  if (v20)
  {
    v22 = [(RFFormattedText *)self inline_image_element];
    v118 = [(RFFormattedText *)v5 inline_image_element];
    v119 = v22;
    if (![v22 isEqual:?])
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

  v121 = [(RFFormattedText *)self color];
  v120 = [(RFFormattedText *)v5 color];
  if ((v121 != 0) == (v120 == 0))
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

  v35 = [(RFFormattedText *)self color];
  v36 = v35 != 0;
  v117 = v35;
  if (v35)
  {
    v37 = [(RFFormattedText *)self color];
    v113 = [(RFFormattedText *)v5 color];
    v114 = v37;
    if (![v37 isEqual:?])
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

  v116 = [(RFFormattedText *)self is_italic];
  v115 = [(RFFormattedText *)v5 is_italic];
  if ((v116 != 0) == (v115 == 0))
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

  v38 = [(RFFormattedText *)self is_italic];
  v39 = v38 != 0;
  v112 = v38;
  if (v38)
  {
    v40 = [(RFFormattedText *)self is_italic];
    v108 = [(RFFormattedText *)v5 is_italic];
    v109 = v40;
    if (![v40 isEqual:?])
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

  v111 = [(RFFormattedText *)self is_bold];
  v110 = [(RFFormattedText *)v5 is_bold];
  if ((v111 != 0) == (v110 == 0))
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

  v41 = [(RFFormattedText *)self is_bold];
  v42 = v41 != 0;
  v107 = v41;
  if (v41)
  {
    v43 = [(RFFormattedText *)self is_bold];
    v103 = [(RFFormattedText *)v5 is_bold];
    v104 = v43;
    if (![v43 isEqual:?])
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

  v106 = [(RFFormattedText *)self text_encapsulation];
  v105 = [(RFFormattedText *)v5 text_encapsulation];
  if ((v106 != 0) == (v105 == 0))
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

  v44 = [(RFFormattedText *)self text_encapsulation];
  v45 = v44 != 0;
  v102 = v44;
  if (v44)
  {
    v46 = [(RFFormattedText *)self text_encapsulation];
    v98 = [(RFFormattedText *)v5 text_encapsulation];
    v99 = v46;
    if (![v46 isEqual:?])
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

  v101 = [(RFFormattedText *)self is_highlighted];
  v100 = [(RFFormattedText *)v5 is_highlighted];
  if ((v101 != 0) == (v100 == 0))
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

  v47 = [(RFFormattedText *)self is_highlighted];
  v48 = v47 != 0;
  v97 = v47;
  if (v47)
  {
    v49 = [(RFFormattedText *)self is_highlighted];
    v93 = [(RFFormattedText *)v5 is_highlighted];
    v94 = v49;
    if (![v49 isEqual:?])
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

  v96 = [(RFFormattedText *)self background_color];
  v95 = [(RFFormattedText *)v5 background_color];
  if ((v96 != 0) == (v95 == 0))
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

  v50 = [(RFFormattedText *)self background_color];
  LODWORD(v138[2]) = v50 != 0;
  v92 = v50;
  v65 = v5;
  if (v50)
  {
    v51 = [(RFFormattedText *)self background_color];
    v88 = [(RFFormattedText *)v5 background_color];
    v89 = v51;
    if (![v51 isEqual:?])
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

  v91 = [(RFFormattedText *)self attributions];
  v90 = [(RFFormattedText *)v5 attributions];
  if ((v91 != 0) == (v90 == 0))
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

  v52 = [(RFFormattedText *)self attributions];
  HIDWORD(v138[1]) = v52 != 0;
  v87 = v52;
  if (v52)
  {
    v53 = [(RFFormattedText *)self attributions];
    v83 = [(RFFormattedText *)v65 attributions];
    v84 = v53;
    if (![v53 isEqual:?])
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

  v86 = [(RFFormattedText *)self highlighted_substrings];
  v85 = [(RFFormattedText *)v65 highlighted_substrings];
  if ((v86 != 0) == (v85 == 0))
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

  v54 = [(RFFormattedText *)self highlighted_substrings];
  LODWORD(v138[1]) = v54 != 0;
  v82 = v54;
  if (v54)
  {
    v55 = [(RFFormattedText *)self highlighted_substrings];
    v78 = [(RFFormattedText *)v65 highlighted_substrings];
    v79 = v55;
    if (![v55 isEqual:?])
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

  v81 = [(RFFormattedText *)self font];
  v80 = [(RFFormattedText *)v65 font];
  if ((v81 != 0) == (v80 == 0))
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

  v56 = [(RFFormattedText *)self font];
  HIDWORD(v138[0]) = v56 != 0;
  v77 = v56;
  if (v56)
  {
    v57 = [(RFFormattedText *)self font];
    v73 = [(RFFormattedText *)v65 font];
    v74 = v57;
    if (![v57 isEqual:?])
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

  v76 = [(RFFormattedText *)self is_underlined];
  v75 = [(RFFormattedText *)v65 is_underlined];
  if ((v76 != 0) == (v75 == 0))
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

  v58 = [(RFFormattedText *)self is_underlined];
  LODWORD(v138[0]) = v58 != 0;
  v72 = v58;
  if (v58)
  {
    v59 = [(RFFormattedText *)self is_underlined];
    v68 = [(RFFormattedText *)v65 is_underlined];
    v69 = v59;
    if (![v59 isEqual:?])
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

  v71 = [(RFFormattedText *)self engageable];
  v70 = [(RFFormattedText *)v65 engageable];
  if ((v71 != 0) == (v70 == 0))
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

  v60 = [(RFFormattedText *)self engageable];
  v128 = v60 != 0;
  v67 = v60;
  if (v60)
  {
    v61 = [(RFFormattedText *)self engageable];
    [(RFFormattedText *)v65 engageable];
    v64 = v66 = v61;
    if (![v61 isEqual:?])
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

  v62 = [(RFFormattedText *)self weight];
  if (v62 != [(RFFormattedText *)v65 weight])
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

  v63 = [(RFFormattedText *)self design];
  v5 = v65;
  v19 = v63 == [(RFFormattedText *)v65 design];
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
    v127 = v4;
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
    v4 = v127;
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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  if ([(RFFormattedText *)self hasText])
  {
    v5 = [(RFFormattedText *)self text];
    v6 = [v5 copy];
    [v4 setText:v6];
  }

  if ([(RFFormattedText *)self hasInline_image_element])
  {
    v7 = [(RFFormattedText *)self inline_image_element];
    v8 = [v7 copy];
    [v4 setInline_image_element:v8];
  }

  v9 = [(RFFormattedText *)self color];
  v10 = [v9 copy];
  [v4 setColor:v10];

  v11 = [(RFFormattedText *)self is_italic];
  v12 = [v11 copy];
  [v4 setIs_italic:v12];

  v13 = [(RFFormattedText *)self is_bold];
  v14 = [v13 copy];
  [v4 setIs_bold:v14];

  v15 = [(RFFormattedText *)self text_encapsulation];
  v16 = [v15 copy];
  [v4 setText_encapsulation:v16];

  v17 = [(RFFormattedText *)self is_highlighted];
  v18 = [v17 copy];
  [v4 setIs_highlighted:v18];

  v19 = [(RFFormattedText *)self background_color];
  v20 = [v19 copy];
  [v4 setBackground_color:v20];

  v21 = [(RFFormattedText *)self attributions];
  v22 = [v21 copy];
  [v4 setAttributions:v22];

  v23 = [(RFFormattedText *)self highlighted_substrings];
  v24 = [v23 copy];
  [v4 setHighlighted_substrings:v24];

  v25 = [(RFFormattedText *)self font];
  v26 = [v25 copy];
  [v4 setFont:v26];

  v27 = [(RFFormattedText *)self is_underlined];
  v28 = [v27 copy];
  [v4 setIs_underlined:v28];

  v29 = [(RFFormattedText *)self engageable];
  v30 = [v29 copy];
  [v4 setEngageable:v30];

  [v4 setWeight:{-[RFFormattedText weight](self, "weight")}];
  [v4 setDesign:{-[RFFormattedText design](self, "design")}];
  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBRFFormattedText alloc] initWithFacade:self];
  v3 = [(_SFPBRFFormattedText *)v2 jsonData];

  return v3;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBRFFormattedText alloc] initWithFacade:self];
  v3 = [(_SFPBRFFormattedText *)v2 dictionaryRepresentation];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [[_SFPBRFFormattedText alloc] initWithFacade:self];
  v5 = [(_SFPBRFFormattedText *)v6 data];
  [v4 encodeObject:v5 forKey:@"_backingStore"];
}

- (RFFormattedText)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBRFFormattedText alloc] initWithData:v5];
  v7 = [(RFFormattedText *)self initWithProtobuf:v6];

  return v7;
}

- (void)setInline_image_element:(id)a3
{
  *&self->_has |= 2u;
  objc_storeStrong(&self->_inline_image_element, a3);
  v6 = a3;
  *&self->_has &= ~1u;
  text = self->_text;
  self->_text = 0;
}

- (void)setText:(id)a3
{
  *&self->_has |= 1u;
  objc_storeStrong(&self->_text, a3);
  v6 = a3;
  *&self->_has &= ~2u;
  inline_image_element = self->_inline_image_element;
  self->_inline_image_element = 0;
}

- (RFFormattedText)initWithProtobuf:(id)a3
{
  v78 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v75.receiver = self;
  v75.super_class = RFFormattedText;
  v5 = [(RFFormattedText *)&v75 init];
  if (v5)
  {
    v6 = [v4 text];

    if (v6)
    {
      v7 = [v4 text];
      [(RFFormattedText *)v5 setText:v7];
    }

    v8 = [v4 inline_image_element];

    if (v8)
    {
      v9 = [RFImageElement alloc];
      v10 = [v4 inline_image_element];
      v11 = [(RFImageElement *)v9 initWithProtobuf:v10];
      [(RFFormattedText *)v5 setInline_image_element:v11];
    }

    v12 = [v4 color];

    if (v12)
    {
      v13 = [RFColor alloc];
      v14 = [v4 color];
      v15 = [(RFColor *)v13 initWithProtobuf:v14];
      [(RFFormattedText *)v5 setColor:v15];
    }

    v16 = [v4 is_italic];

    if (v16)
    {
      v17 = [RFOptionalBool alloc];
      v18 = [v4 is_italic];
      v19 = [(RFOptionalBool *)v17 initWithProtobuf:v18];
      [(RFFormattedText *)v5 setIs_italic:v19];
    }

    v20 = [v4 is_bold];

    if (v20)
    {
      v21 = [RFOptionalBool alloc];
      v22 = [v4 is_bold];
      v23 = [(RFOptionalBool *)v21 initWithProtobuf:v22];
      [(RFFormattedText *)v5 setIs_bold:v23];
    }

    v24 = [v4 text_encapsulation];

    if (v24)
    {
      v25 = [RFTextEncapsulation alloc];
      v26 = [v4 text_encapsulation];
      v27 = [(RFTextEncapsulation *)v25 initWithProtobuf:v26];
      [(RFFormattedText *)v5 setText_encapsulation:v27];
    }

    v28 = [v4 is_highlighted];

    if (v28)
    {
      v29 = [RFOptionalBool alloc];
      v30 = [v4 is_highlighted];
      v31 = [(RFOptionalBool *)v29 initWithProtobuf:v30];
      [(RFFormattedText *)v5 setIs_highlighted:v31];
    }

    v32 = [v4 background_color];

    if (v32)
    {
      v33 = [RFColor alloc];
      v34 = [v4 background_color];
      v35 = [(RFColor *)v33 initWithProtobuf:v34];
      [(RFFormattedText *)v5 setBackground_color:v35];
    }

    v36 = [v4 attributions];
    if (v36)
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
    v38 = [v4 attributions];
    v39 = [v38 countByEnumeratingWithState:&v71 objects:v77 count:16];
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
            objc_enumerationMutation(v38);
          }

          v43 = [[RFAttribution alloc] initWithProtobuf:*(*(&v71 + 1) + 8 * i)];
          if (v43)
          {
            [v37 addObject:v43];
          }
        }

        v40 = [v38 countByEnumeratingWithState:&v71 objects:v77 count:16];
      }

      while (v40);
    }

    [(RFFormattedText *)v5 setAttributions:v37];
    v44 = [v4 highlighted_substrings];
    if (v44)
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
    v46 = [v4 highlighted_substrings];
    v47 = [v46 countByEnumeratingWithState:&v67 objects:v76 count:16];
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
            objc_enumerationMutation(v46);
          }

          v51 = [[RFHighlightedSubstring alloc] initWithProtobuf:*(*(&v67 + 1) + 8 * j)];
          if (v51)
          {
            [v45 addObject:v51];
          }
        }

        v48 = [v46 countByEnumeratingWithState:&v67 objects:v76 count:16];
      }

      while (v48);
    }

    [(RFFormattedText *)v5 setHighlighted_substrings:v45];
    v52 = [v4 font];

    if (v52)
    {
      v53 = [RFFont alloc];
      v54 = [v4 font];
      v55 = [(RFFont *)v53 initWithProtobuf:v54];
      [(RFFormattedText *)v5 setFont:v55];
    }

    v56 = [v4 is_underlined];

    if (v56)
    {
      v57 = [RFOptionalBool alloc];
      v58 = [v4 is_underlined];
      v59 = [(RFOptionalBool *)v57 initWithProtobuf:v58];
      [(RFFormattedText *)v5 setIs_underlined:v59];
    }

    v60 = [v4 engageable];

    if (v60)
    {
      v61 = [RFEngageable alloc];
      v62 = [v4 engageable];
      v63 = [(RFEngageable *)v61 initWithProtobuf:v62];
      [(RFFormattedText *)v5 setEngageable:v63];
    }

    if ([v4 weight])
    {
      -[RFFormattedText setWeight:](v5, "setWeight:", [v4 weight]);
    }

    if ([v4 design])
    {
      -[RFFormattedText setDesign:](v5, "setDesign:", [v4 design]);
    }

    v64 = v5;
  }

  v65 = *MEMORY[0x1E69E9840];
  return v5;
}

@end