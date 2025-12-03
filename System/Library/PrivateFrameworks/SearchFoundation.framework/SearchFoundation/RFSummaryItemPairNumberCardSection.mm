@interface RFSummaryItemPairNumberCardSection
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (RFSummaryItemPairNumberCardSection)initWithCoder:(id)coder;
- (RFSummaryItemPairNumberCardSection)initWithProtobuf:(id)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation RFSummaryItemPairNumberCardSection

- (RFSummaryItemPairNumberCardSection)initWithProtobuf:(id)protobuf
{
  v79 = *MEMORY[0x1E69E9840];
  protobufCopy = protobuf;
  v77.receiver = self;
  v77.super_class = RFSummaryItemPairNumberCardSection;
  v5 = [(SFCardSection *)&v77 init];
  if (v5)
  {
    number = [protobufCopy number];

    if (number)
    {
      v7 = [RFTextProperty alloc];
      number2 = [protobufCopy number];
      v9 = [(RFTextProperty *)v7 initWithProtobuf:number2];
      [(RFSummaryItemPairNumberCardSection *)v5 setNumber_1:v9];
    }

    number3 = [protobufCopy number];

    if (number3)
    {
      v11 = [RFTextProperty alloc];
      number4 = [protobufCopy number];
      v13 = [(RFTextProperty *)v11 initWithProtobuf:number4];
      [(RFSummaryItemPairNumberCardSection *)v5 setNumber_2:v13];
    }

    text = [protobufCopy text];

    if (text)
    {
      v15 = [RFTextProperty alloc];
      text2 = [protobufCopy text];
      v17 = [(RFTextProperty *)v15 initWithProtobuf:text2];
      [(RFSummaryItemPairNumberCardSection *)v5 setText_1:v17];
    }

    text3 = [protobufCopy text];

    if (text3)
    {
      v19 = [RFTextProperty alloc];
      text4 = [protobufCopy text];
      v21 = [(RFTextProperty *)v19 initWithProtobuf:text4];
      [(RFSummaryItemPairNumberCardSection *)v5 setText_2:v21];
    }

    text5 = [protobufCopy text];

    if (text5)
    {
      v23 = [RFTextProperty alloc];
      text6 = [protobufCopy text];
      v25 = [(RFTextProperty *)v23 initWithProtobuf:text6];
      [(RFSummaryItemPairNumberCardSection *)v5 setText_3:v25];
    }

    text7 = [protobufCopy text];

    if (text7)
    {
      v27 = [RFTextProperty alloc];
      text8 = [protobufCopy text];
      v29 = [(RFTextProperty *)v27 initWithProtobuf:text8];
      [(RFSummaryItemPairNumberCardSection *)v5 setText_4:v29];
    }

    text_5s = [protobufCopy text_5s];
    if (text_5s)
    {
      v31 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v31 = 0;
    }

    v75 = 0u;
    v76 = 0u;
    v73 = 0u;
    v74 = 0u;
    text_5s2 = [protobufCopy text_5s];
    v33 = [text_5s2 countByEnumeratingWithState:&v73 objects:v78 count:16];
    if (v33)
    {
      v34 = v33;
      v35 = *v74;
      do
      {
        for (i = 0; i != v34; ++i)
        {
          if (*v74 != v35)
          {
            objc_enumerationMutation(text_5s2);
          }

          v37 = [[RFTextProperty alloc] initWithProtobuf:*(*(&v73 + 1) + 8 * i)];
          if (v37)
          {
            [v31 addObject:v37];
          }
        }

        v34 = [text_5s2 countByEnumeratingWithState:&v73 objects:v78 count:16];
      }

      while (v34);
    }

    [(RFSummaryItemPairNumberCardSection *)v5 setText_5:v31];
    thumbnail = [protobufCopy thumbnail];

    if (thumbnail)
    {
      v39 = [RFVisualProperty alloc];
      thumbnail2 = [protobufCopy thumbnail];
      v41 = [(RFVisualProperty *)v39 initWithProtobuf:thumbnail2];
      [(RFSummaryItemPairNumberCardSection *)v5 setThumbnail_1:v41];
    }

    thumbnail3 = [protobufCopy thumbnail];

    if (thumbnail3)
    {
      v43 = [RFVisualProperty alloc];
      thumbnail4 = [protobufCopy thumbnail];
      v45 = [(RFVisualProperty *)v43 initWithProtobuf:thumbnail4];
      [(RFSummaryItemPairNumberCardSection *)v5 setThumbnail_2:v45];
    }

    text9 = [protobufCopy text];

    if (text9)
    {
      v47 = [RFTextProperty alloc];
      text10 = [protobufCopy text];
      v49 = [(RFTextProperty *)v47 initWithProtobuf:text10];
      [(RFSummaryItemPairNumberCardSection *)v5 setText_6:v49];
    }

    text11 = [protobufCopy text];

    if (text11)
    {
      v51 = [RFTextProperty alloc];
      text12 = [protobufCopy text];
      v53 = [(RFTextProperty *)v51 initWithProtobuf:text12];
      [(RFSummaryItemPairNumberCardSection *)v5 setText_7:v53];
    }

    button = [protobufCopy button];

    if (button)
    {
      v55 = [SFButtonItem alloc];
      button2 = [protobufCopy button];
      v57 = [(SFButtonItem *)v55 initWithProtobuf:button2];
      [(RFSummaryItemPairNumberCardSection *)v5 setButton_1:v57];
    }

    text13 = [protobufCopy text];

    if (text13)
    {
      v59 = [RFTextProperty alloc];
      text14 = [protobufCopy text];
      v61 = [(RFTextProperty *)v59 initWithProtobuf:text14];
      [(RFSummaryItemPairNumberCardSection *)v5 setText_8:v61];
    }

    text15 = [protobufCopy text];

    if (text15)
    {
      v63 = [RFTextProperty alloc];
      text16 = [protobufCopy text];
      v65 = [(RFTextProperty *)v63 initWithProtobuf:text16];
      [(RFSummaryItemPairNumberCardSection *)v5 setText_9:v65];
    }

    text17 = [protobufCopy text];

    if (text17)
    {
      v67 = [RFTextProperty alloc];
      text18 = [protobufCopy text];
      v69 = [(RFTextProperty *)v67 initWithProtobuf:text18];
      [(RFSummaryItemPairNumberCardSection *)v5 setText_10:v69];
    }

    v70 = v5;
  }

  v71 = *MEMORY[0x1E69E9840];
  return v5;
}

- (unint64_t)hash
{
  v35.receiver = self;
  v35.super_class = RFSummaryItemPairNumberCardSection;
  v3 = [(SFCardSection *)&v35 hash];
  number = [(RFSummaryItemPairNumberCardSection *)self number];
  v4 = [number hash];
  number2 = [(RFSummaryItemPairNumberCardSection *)self number];
  v5 = v4 ^ [number2 hash];
  text = [(RFSummaryItemPairNumberCardSection *)self text];
  v6 = v5 ^ [text hash];
  text2 = [(RFSummaryItemPairNumberCardSection *)self text];
  v7 = v6 ^ [text2 hash];
  text3 = [(RFSummaryItemPairNumberCardSection *)self text];
  v8 = v7 ^ [text3 hash] ^ v3;
  text4 = [(RFSummaryItemPairNumberCardSection *)self text];
  v9 = [text4 hash];
  text5 = [(RFSummaryItemPairNumberCardSection *)self text];
  v11 = v9 ^ [text5 hash];
  thumbnail = [(RFSummaryItemPairNumberCardSection *)self thumbnail];
  v13 = v11 ^ [thumbnail hash];
  thumbnail2 = [(RFSummaryItemPairNumberCardSection *)self thumbnail];
  v15 = v13 ^ [thumbnail2 hash];
  text6 = [(RFSummaryItemPairNumberCardSection *)self text];
  v17 = v15 ^ [text6 hash];
  text7 = [(RFSummaryItemPairNumberCardSection *)self text];
  v28 = v8 ^ v17 ^ [text7 hash];
  button = [(RFSummaryItemPairNumberCardSection *)self button];
  v20 = [button hash];
  text8 = [(RFSummaryItemPairNumberCardSection *)self text];
  v22 = v20 ^ [text8 hash];
  text9 = [(RFSummaryItemPairNumberCardSection *)self text];
  v24 = v22 ^ [text9 hash];
  text10 = [(RFSummaryItemPairNumberCardSection *)self text];
  v26 = v24 ^ [text10 hash];

  return v28 ^ v26;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v18 = 1;
    goto LABEL_103;
  }

  if (![(RFSummaryItemPairNumberCardSection *)equalCopy isMemberOfClass:objc_opt_class()]|| (v154.receiver = self, v154.super_class = RFSummaryItemPairNumberCardSection, ![(SFCardSection *)&v154 isEqual:equalCopy]))
  {
    v18 = 0;
    goto LABEL_103;
  }

  v5 = equalCopy;
  number = [(RFSummaryItemPairNumberCardSection *)self number];
  number2 = [(RFSummaryItemPairNumberCardSection *)v5 number];
  v146 = number2 == 0;
  v147 = number != 0;
  if (v147 == v146)
  {
    v10 = 0;
    memset(v145, 0, sizeof(v145));
    memset(v144, 0, sizeof(v144));
    v11 = 0;
    v138 = 0;
    v153 = 0;
    v136 = 0;
    v142 = 0;
    v134 = 0;
    v140 = 0;
    v152 = 0;
    v133 = 0;
    v139 = 0;
    v151 = 0;
    v135 = 0;
    v141 = 0;
    v150 = 0uLL;
    v137 = 0;
    v143 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    goto LABEL_16;
  }

  number3 = [(RFSummaryItemPairNumberCardSection *)self number];
  v8 = number3 != 0;
  v132 = number3;
  if (number3)
  {
    number4 = [(RFSummaryItemPairNumberCardSection *)self number];
    [(RFSummaryItemPairNumberCardSection *)v5 number];
    v128 = v129 = number4;
    if (![number4 isEqual:?])
    {
      v10 = 0;
      memset(v144, 0, sizeof(v144));
      v11 = 0;
      memset(v145, 0, 20);
      v138 = 0;
      v153 = 0;
      v136 = 0;
      v142 = 0;
      v134 = 0;
      v140 = 0;
      v152 = 0;
      v133 = 0;
      v139 = 0;
      v151 = 0;
      v135 = 0;
      v141 = 0;
      v150 = 0uLL;
      v137 = 0;
      v143 = 0;
      v12 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v18 = 0;
      HIDWORD(v145[2]) = 1;
      goto LABEL_16;
    }
  }

  number5 = [(RFSummaryItemPairNumberCardSection *)self number];
  number6 = [(RFSummaryItemPairNumberCardSection *)v5 number];
  HIDWORD(v145[2]) = v8;
  if ((number5 != 0) == (number6 == 0))
  {
    v10 = 0;
    memset(v144, 0, 32);
    v11 = 0;
    memset(v145, 0, 20);
    v138 = 0;
    v153 = 0;
    v136 = 0;
    v142 = 0;
    v134 = 0;
    v140 = 0;
    v152 = 0;
    v133 = 0;
    v139 = 0;
    v151 = 0;
    v135 = 0;
    v141 = 0;
    v150 = 0uLL;
    v137 = 0;
    v143 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    *&v144[32] = 1;
    goto LABEL_16;
  }

  number7 = [(RFSummaryItemPairNumberCardSection *)self number];
  v20 = number7 != 0;
  v127 = number7;
  if (number7)
  {
    number8 = [(RFSummaryItemPairNumberCardSection *)self number];
    number9 = [(RFSummaryItemPairNumberCardSection *)v5 number];
    v124 = number8;
    if (![number8 isEqual:?])
    {
      v145[0] = 0;
      v145[1] = 0;
      v10 = 0;
      memset(v144, 0, 28);
      v11 = 0;
      v138 = 0;
      v153 = 0;
      v136 = 0;
      v142 = 0;
      v134 = 0;
      v140 = 0;
      v152 = 0;
      v133 = 0;
      v139 = 0;
      v151 = 0;
      v135 = 0;
      v141 = 0;
      v150 = 0uLL;
      v137 = 0;
      v143 = 0;
      v12 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v18 = 0;
      *&v144[28] = 0x100000001;
      LODWORD(v145[2]) = 1;
      goto LABEL_16;
    }
  }

  text = [(RFSummaryItemPairNumberCardSection *)self text];
  text2 = [(RFSummaryItemPairNumberCardSection *)v5 text];
  LODWORD(v145[2]) = v20;
  if ((text != 0) == (text2 == 0))
  {
    v145[0] = 0;
    v145[1] = 0;
    v10 = 0;
    memset(v144, 0, 20);
    v11 = 0;
    v138 = 0;
    v153 = 0;
    v136 = 0;
    v142 = 0;
    v134 = 0;
    v140 = 0;
    v152 = 0;
    v133 = 0;
    v139 = 0;
    v151 = 0;
    v135 = 0;
    v141 = 0;
    v150 = 0uLL;
    v137 = 0;
    v143 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    *&v144[28] = 0x100000001;
    *&v144[20] = 1;
    goto LABEL_16;
  }

  text3 = [(RFSummaryItemPairNumberCardSection *)self text];
  v32 = text3 != 0;
  v122 = text3;
  if (text3)
  {
    text4 = [(RFSummaryItemPairNumberCardSection *)self text];
    text5 = [(RFSummaryItemPairNumberCardSection *)v5 text];
    v119 = text4;
    if (![text4 isEqual:?])
    {
      *(v145 + 4) = 0;
      v10 = 0;
      memset(v144, 0, 20);
      v11 = 0;
      LODWORD(v145[0]) = 0;
      v138 = 0;
      v153 = 0;
      v136 = 0;
      v142 = 0;
      v134 = 0;
      v140 = 0;
      v152 = 0;
      v133 = 0;
      v139 = 0;
      v151 = 0;
      v135 = 0;
      v141 = 0;
      v150 = 0uLL;
      v137 = 0;
      v143 = 0;
      v12 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v18 = 0;
      *&v144[28] = 0x100000001;
      *&v144[20] = 0x100000001;
      HIDWORD(v145[1]) = 1;
      goto LABEL_16;
    }

    HIDWORD(v145[1]) = v32;
  }

  else
  {
    HIDWORD(v145[1]) = 0;
  }

  text6 = [(RFSummaryItemPairNumberCardSection *)self text];
  text7 = [(RFSummaryItemPairNumberCardSection *)v5 text];
  if ((text6 != 0) == (text7 == 0))
  {
    *(v145 + 4) = 0;
    v10 = 0;
    *&v144[4] = 0;
    *v144 = 0;
    v11 = 0;
    LODWORD(v145[0]) = 0;
    v138 = 0;
    v153 = 0;
    v136 = 0;
    v142 = 0;
    v134 = 0;
    v140 = 0;
    v152 = 0;
    v133 = 0;
    v139 = 0;
    v151 = 0;
    v135 = 0;
    v141 = 0;
    v150 = 0uLL;
    v137 = 0;
    v143 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    *&v144[28] = 0x100000001;
    *&v144[20] = 0x100000001;
    *&v144[12] = 1;
    goto LABEL_16;
  }

  text8 = [(RFSummaryItemPairNumberCardSection *)self text];
  v35 = text8 != 0;
  v117 = text8;
  if (text8)
  {
    text9 = [(RFSummaryItemPairNumberCardSection *)self text];
    text10 = [(RFSummaryItemPairNumberCardSection *)v5 text];
    v114 = text9;
    if (![text9 isEqual:?])
    {
      v10 = 0;
      *&v144[4] = 0;
      v145[0] = 0;
      *v144 = 0;
      v11 = 0;
      v138 = 0;
      v153 = 0;
      v136 = 0;
      v142 = 0;
      v134 = 0;
      v140 = 0;
      v152 = 0;
      v133 = 0;
      v139 = 0;
      v151 = 0;
      v135 = 0;
      v141 = 0;
      v150 = 0uLL;
      v137 = 0;
      v143 = 0;
      v12 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v18 = 0;
      *&v144[28] = 0x100000001;
      *&v144[20] = 0x100000001;
      *&v144[12] = 0x100000001;
      LODWORD(v145[1]) = 1;
      goto LABEL_16;
    }

    LODWORD(v145[1]) = v35;
  }

  else
  {
    LODWORD(v145[1]) = 0;
  }

  text11 = [(RFSummaryItemPairNumberCardSection *)self text];
  text12 = [(RFSummaryItemPairNumberCardSection *)v5 text];
  if ((text11 != 0) == (text12 == 0))
  {
    *&v144[4] = 0;
    v145[0] = 0;
    *v144 = 0;
    v11 = 0;
    v138 = 0;
    v153 = 0;
    v136 = 0;
    v142 = 0;
    v134 = 0;
    v140 = 0;
    v152 = 0;
    v133 = 0;
    v139 = 0;
    v151 = 0;
    v135 = 0;
    v141 = 0;
    v150 = 0uLL;
    v137 = 0;
    v143 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    *&v144[28] = 0x100000001;
    *&v144[20] = 0x100000001;
    *&v144[12] = 0x100000001;
    v10 = 1;
    goto LABEL_16;
  }

  text13 = [(RFSummaryItemPairNumberCardSection *)self text];
  v38 = text13 != 0;
  v112 = text13;
  if (text13)
  {
    text14 = [(RFSummaryItemPairNumberCardSection *)self text];
    text15 = [(RFSummaryItemPairNumberCardSection *)v5 text];
    v109 = text14;
    if (![text14 isEqual:?])
    {
      *v144 = 0;
      v11 = 0;
      v145[0] = 0x100000000;
      v138 = 0;
      v153 = 0;
      v136 = 0;
      v142 = 0;
      v134 = 0;
      v140 = 0;
      v152 = 0;
      v133 = 0;
      v139 = 0;
      v151 = 0;
      v135 = 0;
      v141 = 0;
      v150 = 0uLL;
      v137 = 0;
      v143 = 0;
      v12 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v18 = 0;
      *&v144[28] = 0x100000001;
      *&v144[20] = 0x100000001;
      *&v144[12] = 0x100000001;
      v10 = 1;
      *&v144[8] = 1;
      goto LABEL_16;
    }

    HIDWORD(v145[0]) = v38;
  }

  else
  {
    HIDWORD(v145[0]) = 0;
  }

  text16 = [(RFSummaryItemPairNumberCardSection *)self text];
  text17 = [(RFSummaryItemPairNumberCardSection *)v5 text];
  if ((text16 != 0) == (text17 == 0))
  {
    v11 = 0;
    LODWORD(v145[0]) = 0;
    v138 = 0;
    v153 = 0;
    v136 = 0;
    v142 = 0;
    v134 = 0;
    v140 = 0;
    v152 = 0;
    v133 = 0;
    v139 = 0;
    v151 = 0;
    v135 = 0;
    v141 = 0;
    v150 = 0uLL;
    v137 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    *&v144[28] = 0x100000001;
    *&v144[20] = 0x100000001;
    *&v144[12] = 0x100000001;
    v10 = 1;
    *&v144[8] = 1;
    v143 = 0;
    *v144 = 1;
    goto LABEL_16;
  }

  text18 = [(RFSummaryItemPairNumberCardSection *)self text];
  v41 = text18 != 0;
  v107 = text18;
  if (text18)
  {
    text19 = [(RFSummaryItemPairNumberCardSection *)self text];
    text20 = [(RFSummaryItemPairNumberCardSection *)v5 text];
    v104 = text19;
    if (![text19 isEqual:?])
    {
      v138 = 0;
      v153 = 0;
      v136 = 0;
      v142 = 0;
      v134 = 0;
      v140 = 0;
      v152 = 0;
      v133 = 0;
      v139 = 0;
      v151 = 0;
      v135 = 0;
      v141 = 0;
      v150 = 0uLL;
      v137 = 0;
      v12 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v18 = 0;
      *&v144[28] = 0x100000001;
      *&v144[20] = 0x100000001;
      *&v144[12] = 0x100000001;
      v10 = 1;
      *&v144[8] = 1;
      v143 = 0;
      *v144 = 1;
      v11 = 1;
      LODWORD(v145[0]) = 1;
      goto LABEL_16;
    }

    LODWORD(v145[0]) = v41;
  }

  else
  {
    LODWORD(v145[0]) = 0;
  }

  text21 = [(RFSummaryItemPairNumberCardSection *)self text];
  text22 = [(RFSummaryItemPairNumberCardSection *)v5 text];
  if ((text21 != 0) == (text22 == 0))
  {
    v153 = 0;
    v136 = 0;
    v142 = 0;
    v134 = 0;
    v140 = 0;
    v152 = 0;
    v133 = 0;
    v139 = 0;
    v151 = 0;
    v135 = 0;
    v141 = 0;
    v150 = 0uLL;
    v137 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    *&v144[28] = 0x100000001;
    *&v144[20] = 0x100000001;
    *&v144[12] = 0x100000001;
    v10 = 1;
    *&v144[8] = 1;
    v143 = 0;
    *v144 = 1;
    v11 = 1;
    v138 = 1;
  }

  else
  {
    text23 = [(RFSummaryItemPairNumberCardSection *)self text];
    HIDWORD(v153) = text23 != 0;
    v102 = text23;
    if (!text23 || (-[RFSummaryItemPairNumberCardSection text](self, "text"), v44 = objc_claimAutoreleasedReturnValue(), -[RFSummaryItemPairNumberCardSection text](v5, "text"), v98 = objc_claimAutoreleasedReturnValue(), v99 = v44, [v44 isEqual:?]))
    {
      thumbnail = [(RFSummaryItemPairNumberCardSection *)self thumbnail];
      thumbnail2 = [(RFSummaryItemPairNumberCardSection *)v5 thumbnail];
      if ((thumbnail != 0) == (thumbnail2 == 0))
      {
        v142 = 0;
        LODWORD(v153) = 0;
        v134 = 0;
        v140 = 0;
        v152 = 0;
        v133 = 0;
        v139 = 0;
        v151 = 0;
        v135 = 0;
        v141 = 0;
        v150 = 0uLL;
        v12 = 0;
        v13 = 0;
        v14 = 0;
        v15 = 0;
        v16 = 0;
        v17 = 0;
        v18 = 0;
        *&v144[28] = 0x100000001;
        *&v144[20] = 0x100000001;
        *&v144[12] = 0x100000001;
        v10 = 1;
        *&v144[8] = 1;
        v143 = 0;
        *v144 = 0x100000001;
        v11 = 1;
        v137 = 0;
        v138 = 1;
        v136 = 1;
      }

      else
      {
        thumbnail3 = [(RFSummaryItemPairNumberCardSection *)self thumbnail];
        LODWORD(v153) = thumbnail3 != 0;
        v97 = thumbnail3;
        if (!thumbnail3 || (-[RFSummaryItemPairNumberCardSection thumbnail](self, "thumbnail"), v46 = objc_claimAutoreleasedReturnValue(), -[RFSummaryItemPairNumberCardSection thumbnail](v5, "thumbnail"), v93 = objc_claimAutoreleasedReturnValue(), v94 = v46, [v46 isEqual:?]))
        {
          thumbnail4 = [(RFSummaryItemPairNumberCardSection *)self thumbnail];
          thumbnail5 = [(RFSummaryItemPairNumberCardSection *)v5 thumbnail];
          if ((thumbnail4 != 0) == (thumbnail5 == 0))
          {
            v140 = 0;
            v152 = 0;
            v133 = 0;
            v139 = 0;
            v151 = 0;
            v135 = 0;
            v141 = 0;
            v150 = 0uLL;
            v12 = 0;
            v13 = 0;
            v14 = 0;
            v15 = 0;
            v16 = 0;
            v17 = 0;
            v18 = 0;
            *&v144[28] = 0x100000001;
            *&v144[20] = 0x100000001;
            *&v144[12] = 0x100000001;
            v10 = 1;
            *&v144[8] = 1;
            v143 = 0;
            *v144 = 0x100000001;
            v11 = 1;
            v137 = 0;
            v138 = 1;
            v136 = 1;
            v142 = 1;
            v134 = 1;
          }

          else
          {
            thumbnail6 = [(RFSummaryItemPairNumberCardSection *)self thumbnail];
            v152 = thumbnail6 != 0;
            v92 = thumbnail6;
            if (!thumbnail6 || (-[RFSummaryItemPairNumberCardSection thumbnail](self, "thumbnail"), v48 = objc_claimAutoreleasedReturnValue(), -[RFSummaryItemPairNumberCardSection thumbnail](v5, "thumbnail"), v88 = objc_claimAutoreleasedReturnValue(), v89 = v48, [v48 isEqual:?]))
            {
              text24 = [(RFSummaryItemPairNumberCardSection *)self text];
              text25 = [(RFSummaryItemPairNumberCardSection *)v5 text];
              if ((text24 != 0) == (text25 == 0))
              {
                v139 = 0;
                v151 = 0;
                v135 = 0;
                v141 = 0;
                v150 = 0uLL;
                v12 = 0;
                v13 = 0;
                v14 = 0;
                v15 = 0;
                v16 = 0;
                v17 = 0;
                v18 = 0;
                *&v144[28] = 0x100000001;
                *&v144[20] = 0x100000001;
                *&v144[12] = 0x100000001;
                v10 = 1;
                *&v144[8] = 1;
                v143 = 0;
                *v144 = 0x100000001;
                v11 = 1;
                v137 = 0;
                v138 = 1;
                v136 = 1;
                v142 = 1;
                v134 = 1;
                v140 = 1;
                v133 = 1;
              }

              else
              {
                text26 = [(RFSummaryItemPairNumberCardSection *)self text];
                v151 = text26 != 0;
                v87 = text26;
                if (!text26 || (-[RFSummaryItemPairNumberCardSection text](self, "text"), v50 = objc_claimAutoreleasedReturnValue(), -[RFSummaryItemPairNumberCardSection text](v5, "text"), v83 = objc_claimAutoreleasedReturnValue(), v84 = v50, [v50 isEqual:?]))
                {
                  text27 = [(RFSummaryItemPairNumberCardSection *)self text];
                  text28 = [(RFSummaryItemPairNumberCardSection *)v5 text];
                  if ((text27 != 0) == (text28 == 0))
                  {
                    v141 = 0;
                    v150 = 0uLL;
                    v12 = 0;
                    v13 = 0;
                    v14 = 0;
                    v15 = 0;
                    v16 = 0;
                    v17 = 0;
                    v18 = 0;
                    *&v144[28] = 0x100000001;
                    *&v144[20] = 0x100000001;
                    *&v144[12] = 0x100000001;
                    v10 = 1;
                    *&v144[8] = 1;
                    v143 = 0;
                    *v144 = 0x100000001;
                    v11 = 1;
                    v137 = 0;
                    v138 = 1;
                    v136 = 1;
                    v142 = 1;
                    v134 = 1;
                    v140 = 1;
                    v133 = 1;
                    v139 = 1;
                    v135 = 1;
                  }

                  else
                  {
                    text29 = [(RFSummaryItemPairNumberCardSection *)self text];
                    HIDWORD(v150) = text29 != 0;
                    v82 = text29;
                    if (!text29 || (-[RFSummaryItemPairNumberCardSection text](self, "text"), v52 = objc_claimAutoreleasedReturnValue(), -[RFSummaryItemPairNumberCardSection text](v5, "text"), v78 = objc_claimAutoreleasedReturnValue(), v79 = v52, [v52 isEqual:?]))
                    {
                      button = [(RFSummaryItemPairNumberCardSection *)self button];
                      button2 = [(RFSummaryItemPairNumberCardSection *)v5 button];
                      if ((button != 0) == (button2 == 0))
                      {
                        *(&v150 + 4) = 0;
                        v12 = 0;
                        v13 = 0;
                        v14 = 0;
                        LODWORD(v150) = 0;
                        v15 = 0;
                        v16 = 0;
                        v17 = 0;
                        v18 = 0;
                        *&v144[28] = 0x100000001;
                        *&v144[20] = 0x100000001;
                        *&v144[12] = 0x100000001;
                        v10 = 1;
                        *&v144[8] = 1;
                        v143 = 0;
                        *v144 = 0x100000001;
                        v11 = 1;
                        v138 = 1;
                        v136 = 1;
                        v142 = 1;
                        v134 = 1;
                        v140 = 1;
                        v133 = 1;
                        v139 = 1;
                        v135 = 1;
                        v141 = 1;
                        v137 = 1;
                      }

                      else
                      {
                        button3 = [(RFSummaryItemPairNumberCardSection *)self button];
                        DWORD2(v150) = button3 != 0;
                        v77 = button3;
                        if (!button3 || (-[RFSummaryItemPairNumberCardSection button](self, "button"), v54 = objc_claimAutoreleasedReturnValue(), -[RFSummaryItemPairNumberCardSection button](v5, "button"), v73 = objc_claimAutoreleasedReturnValue(), v74 = v54, [v54 isEqual:?]))
                        {
                          text30 = [(RFSummaryItemPairNumberCardSection *)self text];
                          text31 = [(RFSummaryItemPairNumberCardSection *)v5 text];
                          if ((text30 != 0) == (text31 == 0))
                          {
                            v12 = 0;
                            *&v150 = 0;
                            v13 = 0;
                            v14 = 0;
                            v15 = 0;
                            v16 = 0;
                            v17 = 0;
                            v18 = 0;
                            *&v144[28] = 0x100000001;
                            *&v144[20] = 0x100000001;
                            *&v144[12] = 0x100000001;
                            v10 = 1;
                            *&v144[8] = 1;
                            *v144 = 0x100000001;
                            v11 = 1;
                            v138 = 1;
                            v136 = 1;
                            v142 = 1;
                            v134 = 1;
                            v140 = 1;
                            v133 = 1;
                            v139 = 1;
                            v135 = 1;
                            v141 = 0x100000001;
                            v137 = 1;
                            v143 = 1;
                          }

                          else
                          {
                            text32 = [(RFSummaryItemPairNumberCardSection *)self text];
                            DWORD1(v150) = text32 != 0;
                            v72 = text32;
                            if (!text32 || (-[RFSummaryItemPairNumberCardSection text](self, "text"), v56 = objc_claimAutoreleasedReturnValue(), -[RFSummaryItemPairNumberCardSection text](v5, "text"), v68 = objc_claimAutoreleasedReturnValue(), v69 = v56, [v56 isEqual:?]))
                            {
                              text33 = [(RFSummaryItemPairNumberCardSection *)self text];
                              text34 = [(RFSummaryItemPairNumberCardSection *)v5 text];
                              if ((text33 != 0) == (text34 == 0))
                              {
                                v14 = 0;
                                LODWORD(v150) = 0;
                                v15 = 0;
                                v16 = 0;
                                v17 = 0;
                                v18 = 0;
                                *&v144[28] = 0x100000001;
                                *&v144[20] = 0x100000001;
                                *&v144[12] = 0x100000001;
                                v10 = 1;
                                *&v144[8] = 1;
                                *v144 = 0x100000001;
                                v11 = 1;
                                v138 = 1;
                                v136 = 1;
                                v142 = 1;
                                v134 = 1;
                                v140 = 1;
                                v133 = 1;
                                v139 = 1;
                                v135 = 1;
                                v141 = 0x100000001;
                                v137 = 1;
                                v143 = 1;
                                v12 = 1;
                                v13 = 1;
                              }

                              else
                              {
                                text35 = [(RFSummaryItemPairNumberCardSection *)self text];
                                LODWORD(v150) = text35 != 0;
                                v67 = text35;
                                if (!text35 || (-[RFSummaryItemPairNumberCardSection text](self, "text"), v58 = objc_claimAutoreleasedReturnValue(), -[RFSummaryItemPairNumberCardSection text](v5, "text"), v63 = objc_claimAutoreleasedReturnValue(), v64 = v58, [v58 isEqual:?]))
                                {
                                  text36 = [(RFSummaryItemPairNumberCardSection *)self text];
                                  text37 = [(RFSummaryItemPairNumberCardSection *)v5 text];
                                  if ((text36 != 0) == (text37 == 0))
                                  {
                                    v16 = 0;
                                    v17 = 0;
                                    v18 = 0;
                                    *&v144[28] = 0x100000001;
                                    *&v144[20] = 0x100000001;
                                    *&v144[12] = 0x100000001;
                                    v10 = 1;
                                    *&v144[8] = 1;
                                    *v144 = 0x100000001;
                                    v11 = 1;
                                    v138 = 1;
                                    v136 = 1;
                                    v142 = 1;
                                    v134 = 1;
                                    v140 = 1;
                                    v133 = 1;
                                    v139 = 1;
                                    v135 = 1;
                                    v141 = 0x100000001;
                                    v137 = 1;
                                    v143 = 1;
                                    v12 = 1;
                                    v13 = 1;
                                    v14 = 1;
                                    v15 = 1;
                                  }

                                  else
                                  {
                                    text38 = [(RFSummaryItemPairNumberCardSection *)self text];
                                    if (text38)
                                    {
                                      text39 = [(RFSummaryItemPairNumberCardSection *)self text];
                                      text40 = [(RFSummaryItemPairNumberCardSection *)v5 text];
                                      v61 = text39;
                                      v18 = [text39 isEqual:text40];
                                      v6 = text40;
                                      v17 = 1;
                                      *&v144[28] = 0x100000001;
                                      *&v144[20] = 0x100000001;
                                      *&v144[12] = 0x100000001;
                                      v10 = 1;
                                      *&v144[8] = 1;
                                      *v144 = 0x100000001;
                                      v11 = 1;
                                      v138 = 1;
                                      v136 = 1;
                                      v142 = 1;
                                      v134 = 1;
                                      v140 = 1;
                                      v133 = 1;
                                      v139 = 1;
                                      v135 = 1;
                                      v141 = 0x100000001;
                                      v137 = 1;
                                      v143 = 1;
                                      v12 = 1;
                                      v13 = 1;
                                      v14 = 1;
                                      v15 = 1;
                                      v16 = 1;
                                    }

                                    else
                                    {
                                      text38 = 0;
                                      v17 = 0;
                                      *&v144[28] = 0x100000001;
                                      *&v144[20] = 0x100000001;
                                      *&v144[12] = 0x100000001;
                                      v10 = 1;
                                      *&v144[8] = 1;
                                      *v144 = 0x100000001;
                                      v11 = 1;
                                      v138 = 1;
                                      v136 = 1;
                                      v142 = 1;
                                      v134 = 1;
                                      v140 = 1;
                                      v133 = 1;
                                      v139 = 1;
                                      v135 = 1;
                                      v141 = 0x100000001;
                                      v137 = 1;
                                      v143 = 1;
                                      v12 = 1;
                                      v13 = 1;
                                      v14 = 1;
                                      v15 = 1;
                                      v16 = 1;
                                      v18 = 1;
                                    }
                                  }
                                }

                                else
                                {
                                  v15 = 0;
                                  v16 = 0;
                                  v17 = 0;
                                  v18 = 0;
                                  *&v144[28] = 0x100000001;
                                  *&v144[20] = 0x100000001;
                                  *&v144[12] = 0x100000001;
                                  v10 = 1;
                                  *&v144[8] = 1;
                                  *v144 = 0x100000001;
                                  v11 = 1;
                                  v138 = 1;
                                  v136 = 1;
                                  v142 = 1;
                                  v134 = 1;
                                  v140 = 1;
                                  v133 = 1;
                                  v139 = 1;
                                  v135 = 1;
                                  v141 = 0x100000001;
                                  v137 = 1;
                                  v143 = 1;
                                  v12 = 1;
                                  v13 = 1;
                                  v14 = 1;
                                  LODWORD(v150) = 1;
                                }
                              }
                            }

                            else
                            {
                              v13 = 0;
                              v14 = 0;
                              *&v150 = 0x100000000;
                              v15 = 0;
                              v16 = 0;
                              v17 = 0;
                              v18 = 0;
                              *&v144[28] = 0x100000001;
                              *&v144[20] = 0x100000001;
                              *&v144[12] = 0x100000001;
                              v10 = 1;
                              *&v144[8] = 1;
                              *v144 = 0x100000001;
                              v11 = 1;
                              v138 = 1;
                              v136 = 1;
                              v142 = 1;
                              v134 = 1;
                              v140 = 1;
                              v133 = 1;
                              v139 = 1;
                              v135 = 1;
                              v141 = 0x100000001;
                              v137 = 1;
                              v143 = 1;
                              v12 = 1;
                            }
                          }
                        }

                        else
                        {
                          v12 = 0;
                          *&v150 = 0;
                          v13 = 0;
                          v14 = 0;
                          v15 = 0;
                          v16 = 0;
                          v17 = 0;
                          v18 = 0;
                          *&v144[28] = 0x100000001;
                          *&v144[20] = 0x100000001;
                          *&v144[12] = 0x100000001;
                          v10 = 1;
                          *&v144[8] = 1;
                          *v144 = 0x100000001;
                          v11 = 1;
                          v138 = 1;
                          v136 = 1;
                          v142 = 1;
                          v134 = 1;
                          v140 = 1;
                          v133 = 1;
                          v139 = 1;
                          v135 = 1;
                          v141 = 1;
                          v137 = 1;
                          v143 = 1;
                          DWORD2(v150) = 1;
                        }
                      }
                    }

                    else
                    {
                      v137 = 0;
                      *(&v150 + 4) = 0;
                      v12 = 0;
                      v13 = 0;
                      v14 = 0;
                      LODWORD(v150) = 0;
                      v15 = 0;
                      v16 = 0;
                      v17 = 0;
                      v18 = 0;
                      *&v144[28] = 0x100000001;
                      *&v144[20] = 0x100000001;
                      *&v144[12] = 0x100000001;
                      v10 = 1;
                      *&v144[8] = 1;
                      v143 = 0;
                      *v144 = 0x100000001;
                      v11 = 1;
                      v138 = 1;
                      v136 = 1;
                      v142 = 1;
                      v134 = 1;
                      v140 = 1;
                      v133 = 1;
                      v139 = 1;
                      v135 = 1;
                      v141 = 1;
                      HIDWORD(v150) = 1;
                    }
                  }
                }

                else
                {
                  v135 = 0;
                  v141 = 0;
                  v150 = 0uLL;
                  v12 = 0;
                  v13 = 0;
                  v14 = 0;
                  v15 = 0;
                  v16 = 0;
                  v17 = 0;
                  v18 = 0;
                  *&v144[28] = 0x100000001;
                  *&v144[20] = 0x100000001;
                  *&v144[12] = 0x100000001;
                  v10 = 1;
                  *&v144[8] = 1;
                  v143 = 0;
                  *v144 = 0x100000001;
                  v11 = 1;
                  v137 = 0;
                  v138 = 1;
                  v136 = 1;
                  v142 = 1;
                  v134 = 1;
                  v140 = 1;
                  v133 = 1;
                  v139 = 1;
                  v151 = 1;
                }
              }
            }

            else
            {
              v133 = 0;
              v139 = 0;
              v151 = 0;
              v135 = 0;
              v141 = 0;
              v150 = 0uLL;
              v12 = 0;
              v13 = 0;
              v14 = 0;
              v15 = 0;
              v16 = 0;
              v17 = 0;
              v18 = 0;
              *&v144[28] = 0x100000001;
              *&v144[20] = 0x100000001;
              *&v144[12] = 0x100000001;
              v10 = 1;
              *&v144[8] = 1;
              v143 = 0;
              *v144 = 0x100000001;
              v11 = 1;
              v137 = 0;
              v138 = 1;
              v136 = 1;
              v142 = 1;
              v134 = 1;
              v140 = 1;
              v152 = 1;
            }
          }
        }

        else
        {
          v134 = 0;
          v140 = 0;
          v152 = 0;
          v133 = 0;
          v139 = 0;
          v151 = 0;
          v135 = 0;
          v141 = 0;
          v150 = 0uLL;
          v12 = 0;
          v13 = 0;
          v14 = 0;
          v15 = 0;
          v16 = 0;
          v17 = 0;
          v18 = 0;
          *&v144[28] = 0x100000001;
          *&v144[20] = 0x100000001;
          *&v144[12] = 0x100000001;
          v10 = 1;
          *&v144[8] = 1;
          v143 = 0;
          *v144 = 0x100000001;
          v11 = 1;
          v137 = 0;
          v138 = 1;
          v136 = 1;
          v142 = 1;
          LODWORD(v153) = 1;
        }
      }
    }

    else
    {
      v136 = 0;
      v142 = 0;
      v153 = 0x100000000;
      v134 = 0;
      v140 = 0;
      v152 = 0;
      v133 = 0;
      v139 = 0;
      v151 = 0;
      v135 = 0;
      v141 = 0;
      v150 = 0uLL;
      v12 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v18 = 0;
      *&v144[28] = 0x100000001;
      *&v144[20] = 0x100000001;
      *&v144[12] = 0x100000001;
      v10 = 1;
      *&v144[8] = 1;
      v143 = 0;
      *v144 = 0x100000001;
      v11 = 1;
      v137 = 0;
      v138 = 1;
    }
  }

LABEL_16:
  if (v17)
  {
    v22 = v13;
    v23 = v12;
    v24 = v5;
    v25 = v10;
    v26 = v11;
    v27 = v14;
    v28 = v15;
    v29 = v16;

    v16 = v29;
    v15 = v28;
    v14 = v27;
    v11 = v26;
    v10 = v25;
    v5 = v24;
    v12 = v23;
    v13 = v22;
  }

  if (v16)
  {
  }

  if (v15)
  {
  }

  if (v150)
  {

    if (!v14)
    {
      goto LABEL_24;
    }

LABEL_105:

    if (!v13)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

  if (v14)
  {
    goto LABEL_105;
  }

LABEL_24:
  if (v13)
  {
LABEL_25:
  }

LABEL_26:
  if (DWORD1(v150))
  {
  }

  if (v12)
  {
  }

  if (HIDWORD(v141))
  {
  }

  if (DWORD2(v150))
  {
  }

  if (v143)
  {
  }

  if (v137)
  {
  }

  if (HIDWORD(v150))
  {
  }

  if (v141)
  {
  }

  if (v135)
  {
  }

  if (v151)
  {
  }

  if (v139)
  {
  }

  if (v133)
  {
  }

  if (v152)
  {
  }

  if (v140)
  {
  }

  if (v134)
  {
  }

  if (v153)
  {
  }

  if (v142)
  {
  }

  if (v136)
  {
  }

  if (HIDWORD(v153))
  {
  }

  if (*&v144[4])
  {
  }

  if (v138)
  {
  }

  if (LODWORD(v145[0]))
  {
  }

  if (v11)
  {
  }

  if (*v144)
  {
  }

  if (HIDWORD(v145[0]))
  {
  }

  if (*&v144[8])
  {
  }

  if (v10)
  {
  }

  if (LODWORD(v145[1]))
  {
  }

  if (*&v144[16])
  {
  }

  if (*&v144[12])
  {
  }

  if (HIDWORD(v145[1]))
  {
  }

  if (*&v144[24])
  {
  }

  if (*&v144[20])
  {
  }

  if (LODWORD(v145[2]))
  {
  }

  if (*&v144[28])
  {
  }

  if (*&v144[32])
  {
  }

  if (HIDWORD(v145[2]))
  {
  }

  if (v147 != v146)
  {
  }

LABEL_103:
  return v18;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v36.receiver = self;
  v36.super_class = RFSummaryItemPairNumberCardSection;
  v4 = [(SFCardSection *)&v36 copyWithZone:zone];
  number = [(RFSummaryItemPairNumberCardSection *)self number];
  v6 = [number copy];
  [v4 setNumber_1:v6];

  number2 = [(RFSummaryItemPairNumberCardSection *)self number];
  v8 = [number2 copy];
  [v4 setNumber_2:v8];

  text = [(RFSummaryItemPairNumberCardSection *)self text];
  v10 = [text copy];
  [v4 setText_1:v10];

  text2 = [(RFSummaryItemPairNumberCardSection *)self text];
  v12 = [text2 copy];
  [v4 setText_2:v12];

  text3 = [(RFSummaryItemPairNumberCardSection *)self text];
  v14 = [text3 copy];
  [v4 setText_3:v14];

  text4 = [(RFSummaryItemPairNumberCardSection *)self text];
  v16 = [text4 copy];
  [v4 setText_4:v16];

  text5 = [(RFSummaryItemPairNumberCardSection *)self text];
  v18 = [text5 copy];
  [v4 setText_5:v18];

  thumbnail = [(RFSummaryItemPairNumberCardSection *)self thumbnail];
  v20 = [thumbnail copy];
  [v4 setThumbnail_1:v20];

  thumbnail2 = [(RFSummaryItemPairNumberCardSection *)self thumbnail];
  v22 = [thumbnail2 copy];
  [v4 setThumbnail_2:v22];

  text6 = [(RFSummaryItemPairNumberCardSection *)self text];
  v24 = [text6 copy];
  [v4 setText_6:v24];

  text7 = [(RFSummaryItemPairNumberCardSection *)self text];
  v26 = [text7 copy];
  [v4 setText_7:v26];

  button = [(RFSummaryItemPairNumberCardSection *)self button];
  v28 = [button copy];
  [v4 setButton_1:v28];

  text8 = [(RFSummaryItemPairNumberCardSection *)self text];
  v30 = [text8 copy];
  [v4 setText_8:v30];

  text9 = [(RFSummaryItemPairNumberCardSection *)self text];
  v32 = [text9 copy];
  [v4 setText_9:v32];

  text10 = [(RFSummaryItemPairNumberCardSection *)self text];
  v34 = [text10 copy];
  [v4 setText_10:v34];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBRFSummaryItemPairNumberCardSection alloc] initWithFacade:self];
  jsonData = [(_SFPBRFSummaryItemPairNumberCardSection *)v2 jsonData];

  return jsonData;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBRFSummaryItemPairNumberCardSection alloc] initWithFacade:self];
  dictionaryRepresentation = [(_SFPBRFSummaryItemPairNumberCardSection *)v2 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = RFSummaryItemPairNumberCardSection;
  [(SFCardSection *)&v3 encodeWithCoder:coder];
}

- (RFSummaryItemPairNumberCardSection)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(SFCardSection *)self init];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v7 = [[_SFPBCardSection alloc] initWithData:v6];
  v8 = [[SFCardSection alloc] initWithProtobuf:v7];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    number = [(SFCardSection *)v8 number];
    [(RFSummaryItemPairNumberCardSection *)v5 setNumber_1:number];

    number2 = [(SFCardSection *)v8 number];
    [(RFSummaryItemPairNumberCardSection *)v5 setNumber_2:number2];

    text = [(SFCardSection *)v8 text];
    [(RFSummaryItemPairNumberCardSection *)v5 setText_1:text];

    text2 = [(SFCardSection *)v8 text];
    [(RFSummaryItemPairNumberCardSection *)v5 setText_2:text2];

    text3 = [(SFCardSection *)v8 text];
    [(RFSummaryItemPairNumberCardSection *)v5 setText_3:text3];

    text4 = [(SFCardSection *)v8 text];
    [(RFSummaryItemPairNumberCardSection *)v5 setText_4:text4];

    text5 = [(SFCardSection *)v8 text];
    [(RFSummaryItemPairNumberCardSection *)v5 setText_5:text5];

    thumbnail = [(SFCardSection *)v8 thumbnail];
    [(RFSummaryItemPairNumberCardSection *)v5 setThumbnail_1:thumbnail];

    thumbnail2 = [(SFCardSection *)v8 thumbnail];
    [(RFSummaryItemPairNumberCardSection *)v5 setThumbnail_2:thumbnail2];

    text6 = [(SFCardSection *)v8 text];
    [(RFSummaryItemPairNumberCardSection *)v5 setText_6:text6];

    text7 = [(SFCardSection *)v8 text];
    [(RFSummaryItemPairNumberCardSection *)v5 setText_7:text7];

    button = [(SFCardSection *)v8 button];
    [(RFSummaryItemPairNumberCardSection *)v5 setButton_1:button];

    text8 = [(SFCardSection *)v8 text];
    [(RFSummaryItemPairNumberCardSection *)v5 setText_8:text8];

    text9 = [(SFCardSection *)v8 text];
    [(RFSummaryItemPairNumberCardSection *)v5 setText_9:text9];

    text10 = [(SFCardSection *)v8 text];
    [(RFSummaryItemPairNumberCardSection *)v5 setText_10:text10];

    nextCard = [(SFCardSection *)v8 nextCard];
    [(SFCardSection *)v5 setNextCard:nextCard];

    commands = [(SFCardSection *)v8 commands];
    [(SFCardSection *)v5 setCommands:commands];

    parameterKeyPaths = [(SFCardSection *)v8 parameterKeyPaths];
    [(SFCardSection *)v5 setParameterKeyPaths:parameterKeyPaths];

    cardSectionId = [(SFCardSection *)v8 cardSectionId];
    [(SFCardSection *)v5 setCardSectionId:cardSectionId];

    resultIdentifier = [(SFCardSection *)v8 resultIdentifier];
    [(SFCardSection *)v5 setResultIdentifier:resultIdentifier];

    userReportRequest = [(SFCardSection *)v8 userReportRequest];
    [(SFCardSection *)v5 setUserReportRequest:userReportRequest];

    command = [(SFCardSection *)v8 command];
    [(SFCardSection *)v5 setCommand:command];

    previewCommand = [(SFCardSection *)v8 previewCommand];
    [(SFCardSection *)v5 setPreviewCommand:previewCommand];

    previewButtonItems = [(SFCardSection *)v8 previewButtonItems];
    [(SFCardSection *)v5 setPreviewButtonItems:previewButtonItems];

    cardSectionDetail = [(SFCardSection *)v8 cardSectionDetail];
    [(SFCardSection *)v5 setCardSectionDetail:cardSectionDetail];

    previewButtonItemsTitle = [(SFCardSection *)v8 previewButtonItemsTitle];
    [(SFCardSection *)v5 setPreviewButtonItemsTitle:previewButtonItemsTitle];

    backgroundColor = [(SFCardSection *)v8 backgroundColor];
    [(SFCardSection *)v5 setBackgroundColor:backgroundColor];

    [(SFCardSection *)v5 setShouldHideInAmbientMode:[(SFCardSection *)v8 shouldHideInAmbientMode]];
    leadingSwipeButtonItems = [(SFCardSection *)v8 leadingSwipeButtonItems];
    [(SFCardSection *)v5 setLeadingSwipeButtonItems:leadingSwipeButtonItems];

    trailingSwipeButtonItems = [(SFCardSection *)v8 trailingSwipeButtonItems];
    [(SFCardSection *)v5 setTrailingSwipeButtonItems:trailingSwipeButtonItems];

    punchoutOptions = [(SFCardSection *)v8 punchoutOptions];
    [(SFCardSection *)v5 setPunchoutOptions:punchoutOptions];

    punchoutPickerTitle = [(SFCardSection *)v8 punchoutPickerTitle];
    [(SFCardSection *)v5 setPunchoutPickerTitle:punchoutPickerTitle];

    punchoutPickerDismissText = [(SFCardSection *)v8 punchoutPickerDismissText];
    [(SFCardSection *)v5 setPunchoutPickerDismissText:punchoutPickerDismissText];

    [(SFCardSection *)v5 setCanBeHidden:[(SFCardSection *)v8 canBeHidden]];
    [(SFCardSection *)v5 setHasTopPadding:[(SFCardSection *)v8 hasTopPadding]];
    [(SFCardSection *)v5 setHasBottomPadding:[(SFCardSection *)v8 hasBottomPadding]];
    [(SFCardSection *)v5 setSeparatorStyle:[(SFCardSection *)v8 separatorStyle]];
    referencedCommands = [(SFCardSection *)v8 referencedCommands];
    [(SFCardSection *)v5 setReferencedCommands:referencedCommands];

    [(SFCardSection *)v5 setForceEnable3DTouch:[(SFCardSection *)v8 forceEnable3DTouch]];
    [(SFCardSection *)v5 setShouldShowInSmartDialog:[(SFCardSection *)v8 shouldShowInSmartDialog]];
    appEntityAnnotation = [(SFCardSection *)v8 appEntityAnnotation];
    [(SFCardSection *)v5 setAppEntityAnnotation:appEntityAnnotation];

    emphasisSubjectId = [(SFCardSection *)v8 emphasisSubjectId];
    [(SFCardSection *)v5 setEmphasisSubjectId:emphasisSubjectId];

    [(SFCardSection *)v5 setIncreasedContrastMode:[(SFCardSection *)v8 increasedContrastMode]];
    secondaryCommand = [(SFCardSection *)v8 secondaryCommand];
    [(SFCardSection *)v5 setSecondaryCommand:secondaryCommand];

    [(SFCardSection *)v5 setRequiredLevelOfDetail:[(SFCardSection *)v8 requiredLevelOfDetail]];
    racFeedbackSubfeatureId = [(SFCardSection *)v8 racFeedbackSubfeatureId];
    [(SFCardSection *)v5 setRacFeedbackSubfeatureId:racFeedbackSubfeatureId];

    racFeedbackLoggingContent = [(SFCardSection *)v8 racFeedbackLoggingContent];
    [(SFCardSection *)v5 setRacFeedbackLoggingContent:racFeedbackLoggingContent];

    copyableItems = [(SFCardSection *)v8 copyableItems];
    [(SFCardSection *)v5 setCopyableItems:copyableItems];

    applicationBundleIdentifier = [(SFCardSection *)v8 applicationBundleIdentifier];
    [(SFCardSection *)v5 setApplicationBundleIdentifier:applicationBundleIdentifier];
  }

  return v5;
}

@end