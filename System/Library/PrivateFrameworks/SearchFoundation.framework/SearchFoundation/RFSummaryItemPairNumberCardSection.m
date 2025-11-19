@interface RFSummaryItemPairNumberCardSection
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (RFSummaryItemPairNumberCardSection)initWithCoder:(id)a3;
- (RFSummaryItemPairNumberCardSection)initWithProtobuf:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation RFSummaryItemPairNumberCardSection

- (RFSummaryItemPairNumberCardSection)initWithProtobuf:(id)a3
{
  v79 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v77.receiver = self;
  v77.super_class = RFSummaryItemPairNumberCardSection;
  v5 = [(SFCardSection *)&v77 init];
  if (v5)
  {
    v6 = [v4 number];

    if (v6)
    {
      v7 = [RFTextProperty alloc];
      v8 = [v4 number];
      v9 = [(RFTextProperty *)v7 initWithProtobuf:v8];
      [(RFSummaryItemPairNumberCardSection *)v5 setNumber_1:v9];
    }

    v10 = [v4 number];

    if (v10)
    {
      v11 = [RFTextProperty alloc];
      v12 = [v4 number];
      v13 = [(RFTextProperty *)v11 initWithProtobuf:v12];
      [(RFSummaryItemPairNumberCardSection *)v5 setNumber_2:v13];
    }

    v14 = [v4 text];

    if (v14)
    {
      v15 = [RFTextProperty alloc];
      v16 = [v4 text];
      v17 = [(RFTextProperty *)v15 initWithProtobuf:v16];
      [(RFSummaryItemPairNumberCardSection *)v5 setText_1:v17];
    }

    v18 = [v4 text];

    if (v18)
    {
      v19 = [RFTextProperty alloc];
      v20 = [v4 text];
      v21 = [(RFTextProperty *)v19 initWithProtobuf:v20];
      [(RFSummaryItemPairNumberCardSection *)v5 setText_2:v21];
    }

    v22 = [v4 text];

    if (v22)
    {
      v23 = [RFTextProperty alloc];
      v24 = [v4 text];
      v25 = [(RFTextProperty *)v23 initWithProtobuf:v24];
      [(RFSummaryItemPairNumberCardSection *)v5 setText_3:v25];
    }

    v26 = [v4 text];

    if (v26)
    {
      v27 = [RFTextProperty alloc];
      v28 = [v4 text];
      v29 = [(RFTextProperty *)v27 initWithProtobuf:v28];
      [(RFSummaryItemPairNumberCardSection *)v5 setText_4:v29];
    }

    v30 = [v4 text_5s];
    if (v30)
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
    v32 = [v4 text_5s];
    v33 = [v32 countByEnumeratingWithState:&v73 objects:v78 count:16];
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
            objc_enumerationMutation(v32);
          }

          v37 = [[RFTextProperty alloc] initWithProtobuf:*(*(&v73 + 1) + 8 * i)];
          if (v37)
          {
            [v31 addObject:v37];
          }
        }

        v34 = [v32 countByEnumeratingWithState:&v73 objects:v78 count:16];
      }

      while (v34);
    }

    [(RFSummaryItemPairNumberCardSection *)v5 setText_5:v31];
    v38 = [v4 thumbnail];

    if (v38)
    {
      v39 = [RFVisualProperty alloc];
      v40 = [v4 thumbnail];
      v41 = [(RFVisualProperty *)v39 initWithProtobuf:v40];
      [(RFSummaryItemPairNumberCardSection *)v5 setThumbnail_1:v41];
    }

    v42 = [v4 thumbnail];

    if (v42)
    {
      v43 = [RFVisualProperty alloc];
      v44 = [v4 thumbnail];
      v45 = [(RFVisualProperty *)v43 initWithProtobuf:v44];
      [(RFSummaryItemPairNumberCardSection *)v5 setThumbnail_2:v45];
    }

    v46 = [v4 text];

    if (v46)
    {
      v47 = [RFTextProperty alloc];
      v48 = [v4 text];
      v49 = [(RFTextProperty *)v47 initWithProtobuf:v48];
      [(RFSummaryItemPairNumberCardSection *)v5 setText_6:v49];
    }

    v50 = [v4 text];

    if (v50)
    {
      v51 = [RFTextProperty alloc];
      v52 = [v4 text];
      v53 = [(RFTextProperty *)v51 initWithProtobuf:v52];
      [(RFSummaryItemPairNumberCardSection *)v5 setText_7:v53];
    }

    v54 = [v4 button];

    if (v54)
    {
      v55 = [SFButtonItem alloc];
      v56 = [v4 button];
      v57 = [(SFButtonItem *)v55 initWithProtobuf:v56];
      [(RFSummaryItemPairNumberCardSection *)v5 setButton_1:v57];
    }

    v58 = [v4 text];

    if (v58)
    {
      v59 = [RFTextProperty alloc];
      v60 = [v4 text];
      v61 = [(RFTextProperty *)v59 initWithProtobuf:v60];
      [(RFSummaryItemPairNumberCardSection *)v5 setText_8:v61];
    }

    v62 = [v4 text];

    if (v62)
    {
      v63 = [RFTextProperty alloc];
      v64 = [v4 text];
      v65 = [(RFTextProperty *)v63 initWithProtobuf:v64];
      [(RFSummaryItemPairNumberCardSection *)v5 setText_9:v65];
    }

    v66 = [v4 text];

    if (v66)
    {
      v67 = [RFTextProperty alloc];
      v68 = [v4 text];
      v69 = [(RFTextProperty *)v67 initWithProtobuf:v68];
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
  v34 = [(RFSummaryItemPairNumberCardSection *)self number];
  v4 = [v34 hash];
  v33 = [(RFSummaryItemPairNumberCardSection *)self number];
  v5 = v4 ^ [v33 hash];
  v32 = [(RFSummaryItemPairNumberCardSection *)self text];
  v6 = v5 ^ [v32 hash];
  v31 = [(RFSummaryItemPairNumberCardSection *)self text];
  v7 = v6 ^ [v31 hash];
  v30 = [(RFSummaryItemPairNumberCardSection *)self text];
  v8 = v7 ^ [v30 hash] ^ v3;
  v29 = [(RFSummaryItemPairNumberCardSection *)self text];
  v9 = [v29 hash];
  v10 = [(RFSummaryItemPairNumberCardSection *)self text];
  v11 = v9 ^ [v10 hash];
  v12 = [(RFSummaryItemPairNumberCardSection *)self thumbnail];
  v13 = v11 ^ [v12 hash];
  v14 = [(RFSummaryItemPairNumberCardSection *)self thumbnail];
  v15 = v13 ^ [v14 hash];
  v16 = [(RFSummaryItemPairNumberCardSection *)self text];
  v17 = v15 ^ [v16 hash];
  v18 = [(RFSummaryItemPairNumberCardSection *)self text];
  v28 = v8 ^ v17 ^ [v18 hash];
  v19 = [(RFSummaryItemPairNumberCardSection *)self button];
  v20 = [v19 hash];
  v21 = [(RFSummaryItemPairNumberCardSection *)self text];
  v22 = v20 ^ [v21 hash];
  v23 = [(RFSummaryItemPairNumberCardSection *)self text];
  v24 = v22 ^ [v23 hash];
  v25 = [(RFSummaryItemPairNumberCardSection *)self text];
  v26 = v24 ^ [v25 hash];

  return v28 ^ v26;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v18 = 1;
    goto LABEL_103;
  }

  if (![(RFSummaryItemPairNumberCardSection *)v4 isMemberOfClass:objc_opt_class()]|| (v154.receiver = self, v154.super_class = RFSummaryItemPairNumberCardSection, ![(SFCardSection *)&v154 isEqual:v4]))
  {
    v18 = 0;
    goto LABEL_103;
  }

  v5 = v4;
  v149 = [(RFSummaryItemPairNumberCardSection *)self number];
  v148 = [(RFSummaryItemPairNumberCardSection *)v5 number];
  v146 = v148 == 0;
  v147 = v149 != 0;
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

  v7 = [(RFSummaryItemPairNumberCardSection *)self number];
  v8 = v7 != 0;
  v132 = v7;
  if (v7)
  {
    v9 = [(RFSummaryItemPairNumberCardSection *)self number];
    [(RFSummaryItemPairNumberCardSection *)v5 number];
    v128 = v129 = v9;
    if (![v9 isEqual:?])
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

  v131 = [(RFSummaryItemPairNumberCardSection *)self number];
  v130 = [(RFSummaryItemPairNumberCardSection *)v5 number];
  HIDWORD(v145[2]) = v8;
  if ((v131 != 0) == (v130 == 0))
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

  v19 = [(RFSummaryItemPairNumberCardSection *)self number];
  v20 = v19 != 0;
  v127 = v19;
  if (v19)
  {
    v21 = [(RFSummaryItemPairNumberCardSection *)self number];
    v123 = [(RFSummaryItemPairNumberCardSection *)v5 number];
    v124 = v21;
    if (![v21 isEqual:?])
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

  v126 = [(RFSummaryItemPairNumberCardSection *)self text];
  v125 = [(RFSummaryItemPairNumberCardSection *)v5 text];
  LODWORD(v145[2]) = v20;
  if ((v126 != 0) == (v125 == 0))
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

  v31 = [(RFSummaryItemPairNumberCardSection *)self text];
  v32 = v31 != 0;
  v122 = v31;
  if (v31)
  {
    v33 = [(RFSummaryItemPairNumberCardSection *)self text];
    v118 = [(RFSummaryItemPairNumberCardSection *)v5 text];
    v119 = v33;
    if (![v33 isEqual:?])
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

  v121 = [(RFSummaryItemPairNumberCardSection *)self text];
  v120 = [(RFSummaryItemPairNumberCardSection *)v5 text];
  if ((v121 != 0) == (v120 == 0))
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

  v34 = [(RFSummaryItemPairNumberCardSection *)self text];
  v35 = v34 != 0;
  v117 = v34;
  if (v34)
  {
    v36 = [(RFSummaryItemPairNumberCardSection *)self text];
    v113 = [(RFSummaryItemPairNumberCardSection *)v5 text];
    v114 = v36;
    if (![v36 isEqual:?])
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

  v116 = [(RFSummaryItemPairNumberCardSection *)self text];
  v115 = [(RFSummaryItemPairNumberCardSection *)v5 text];
  if ((v116 != 0) == (v115 == 0))
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

  v37 = [(RFSummaryItemPairNumberCardSection *)self text];
  v38 = v37 != 0;
  v112 = v37;
  if (v37)
  {
    v39 = [(RFSummaryItemPairNumberCardSection *)self text];
    v108 = [(RFSummaryItemPairNumberCardSection *)v5 text];
    v109 = v39;
    if (![v39 isEqual:?])
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

  v111 = [(RFSummaryItemPairNumberCardSection *)self text];
  v110 = [(RFSummaryItemPairNumberCardSection *)v5 text];
  if ((v111 != 0) == (v110 == 0))
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

  v40 = [(RFSummaryItemPairNumberCardSection *)self text];
  v41 = v40 != 0;
  v107 = v40;
  if (v40)
  {
    v42 = [(RFSummaryItemPairNumberCardSection *)self text];
    v103 = [(RFSummaryItemPairNumberCardSection *)v5 text];
    v104 = v42;
    if (![v42 isEqual:?])
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

  v106 = [(RFSummaryItemPairNumberCardSection *)self text];
  v105 = [(RFSummaryItemPairNumberCardSection *)v5 text];
  if ((v106 != 0) == (v105 == 0))
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
    v43 = [(RFSummaryItemPairNumberCardSection *)self text];
    HIDWORD(v153) = v43 != 0;
    v102 = v43;
    if (!v43 || (-[RFSummaryItemPairNumberCardSection text](self, "text"), v44 = objc_claimAutoreleasedReturnValue(), -[RFSummaryItemPairNumberCardSection text](v5, "text"), v98 = objc_claimAutoreleasedReturnValue(), v99 = v44, [v44 isEqual:?]))
    {
      v101 = [(RFSummaryItemPairNumberCardSection *)self thumbnail];
      v100 = [(RFSummaryItemPairNumberCardSection *)v5 thumbnail];
      if ((v101 != 0) == (v100 == 0))
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
        v45 = [(RFSummaryItemPairNumberCardSection *)self thumbnail];
        LODWORD(v153) = v45 != 0;
        v97 = v45;
        if (!v45 || (-[RFSummaryItemPairNumberCardSection thumbnail](self, "thumbnail"), v46 = objc_claimAutoreleasedReturnValue(), -[RFSummaryItemPairNumberCardSection thumbnail](v5, "thumbnail"), v93 = objc_claimAutoreleasedReturnValue(), v94 = v46, [v46 isEqual:?]))
        {
          v96 = [(RFSummaryItemPairNumberCardSection *)self thumbnail];
          v95 = [(RFSummaryItemPairNumberCardSection *)v5 thumbnail];
          if ((v96 != 0) == (v95 == 0))
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
            v47 = [(RFSummaryItemPairNumberCardSection *)self thumbnail];
            v152 = v47 != 0;
            v92 = v47;
            if (!v47 || (-[RFSummaryItemPairNumberCardSection thumbnail](self, "thumbnail"), v48 = objc_claimAutoreleasedReturnValue(), -[RFSummaryItemPairNumberCardSection thumbnail](v5, "thumbnail"), v88 = objc_claimAutoreleasedReturnValue(), v89 = v48, [v48 isEqual:?]))
            {
              v91 = [(RFSummaryItemPairNumberCardSection *)self text];
              v90 = [(RFSummaryItemPairNumberCardSection *)v5 text];
              if ((v91 != 0) == (v90 == 0))
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
                v49 = [(RFSummaryItemPairNumberCardSection *)self text];
                v151 = v49 != 0;
                v87 = v49;
                if (!v49 || (-[RFSummaryItemPairNumberCardSection text](self, "text"), v50 = objc_claimAutoreleasedReturnValue(), -[RFSummaryItemPairNumberCardSection text](v5, "text"), v83 = objc_claimAutoreleasedReturnValue(), v84 = v50, [v50 isEqual:?]))
                {
                  v86 = [(RFSummaryItemPairNumberCardSection *)self text];
                  v85 = [(RFSummaryItemPairNumberCardSection *)v5 text];
                  if ((v86 != 0) == (v85 == 0))
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
                    v51 = [(RFSummaryItemPairNumberCardSection *)self text];
                    HIDWORD(v150) = v51 != 0;
                    v82 = v51;
                    if (!v51 || (-[RFSummaryItemPairNumberCardSection text](self, "text"), v52 = objc_claimAutoreleasedReturnValue(), -[RFSummaryItemPairNumberCardSection text](v5, "text"), v78 = objc_claimAutoreleasedReturnValue(), v79 = v52, [v52 isEqual:?]))
                    {
                      v81 = [(RFSummaryItemPairNumberCardSection *)self button];
                      v80 = [(RFSummaryItemPairNumberCardSection *)v5 button];
                      if ((v81 != 0) == (v80 == 0))
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
                        v53 = [(RFSummaryItemPairNumberCardSection *)self button];
                        DWORD2(v150) = v53 != 0;
                        v77 = v53;
                        if (!v53 || (-[RFSummaryItemPairNumberCardSection button](self, "button"), v54 = objc_claimAutoreleasedReturnValue(), -[RFSummaryItemPairNumberCardSection button](v5, "button"), v73 = objc_claimAutoreleasedReturnValue(), v74 = v54, [v54 isEqual:?]))
                        {
                          v76 = [(RFSummaryItemPairNumberCardSection *)self text];
                          v75 = [(RFSummaryItemPairNumberCardSection *)v5 text];
                          if ((v76 != 0) == (v75 == 0))
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
                            v55 = [(RFSummaryItemPairNumberCardSection *)self text];
                            DWORD1(v150) = v55 != 0;
                            v72 = v55;
                            if (!v55 || (-[RFSummaryItemPairNumberCardSection text](self, "text"), v56 = objc_claimAutoreleasedReturnValue(), -[RFSummaryItemPairNumberCardSection text](v5, "text"), v68 = objc_claimAutoreleasedReturnValue(), v69 = v56, [v56 isEqual:?]))
                            {
                              v71 = [(RFSummaryItemPairNumberCardSection *)self text];
                              v70 = [(RFSummaryItemPairNumberCardSection *)v5 text];
                              if ((v71 != 0) == (v70 == 0))
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
                                v57 = [(RFSummaryItemPairNumberCardSection *)self text];
                                LODWORD(v150) = v57 != 0;
                                v67 = v57;
                                if (!v57 || (-[RFSummaryItemPairNumberCardSection text](self, "text"), v58 = objc_claimAutoreleasedReturnValue(), -[RFSummaryItemPairNumberCardSection text](v5, "text"), v63 = objc_claimAutoreleasedReturnValue(), v64 = v58, [v58 isEqual:?]))
                                {
                                  v66 = [(RFSummaryItemPairNumberCardSection *)self text];
                                  v65 = [(RFSummaryItemPairNumberCardSection *)v5 text];
                                  if ((v66 != 0) == (v65 == 0))
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
                                    v62 = [(RFSummaryItemPairNumberCardSection *)self text];
                                    if (v62)
                                    {
                                      v59 = [(RFSummaryItemPairNumberCardSection *)self text];
                                      v60 = [(RFSummaryItemPairNumberCardSection *)v5 text];
                                      v61 = v59;
                                      v18 = [v59 isEqual:v60];
                                      v6 = v60;
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
                                      v62 = 0;
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

- (id)copyWithZone:(_NSZone *)a3
{
  v36.receiver = self;
  v36.super_class = RFSummaryItemPairNumberCardSection;
  v4 = [(SFCardSection *)&v36 copyWithZone:a3];
  v5 = [(RFSummaryItemPairNumberCardSection *)self number];
  v6 = [v5 copy];
  [v4 setNumber_1:v6];

  v7 = [(RFSummaryItemPairNumberCardSection *)self number];
  v8 = [v7 copy];
  [v4 setNumber_2:v8];

  v9 = [(RFSummaryItemPairNumberCardSection *)self text];
  v10 = [v9 copy];
  [v4 setText_1:v10];

  v11 = [(RFSummaryItemPairNumberCardSection *)self text];
  v12 = [v11 copy];
  [v4 setText_2:v12];

  v13 = [(RFSummaryItemPairNumberCardSection *)self text];
  v14 = [v13 copy];
  [v4 setText_3:v14];

  v15 = [(RFSummaryItemPairNumberCardSection *)self text];
  v16 = [v15 copy];
  [v4 setText_4:v16];

  v17 = [(RFSummaryItemPairNumberCardSection *)self text];
  v18 = [v17 copy];
  [v4 setText_5:v18];

  v19 = [(RFSummaryItemPairNumberCardSection *)self thumbnail];
  v20 = [v19 copy];
  [v4 setThumbnail_1:v20];

  v21 = [(RFSummaryItemPairNumberCardSection *)self thumbnail];
  v22 = [v21 copy];
  [v4 setThumbnail_2:v22];

  v23 = [(RFSummaryItemPairNumberCardSection *)self text];
  v24 = [v23 copy];
  [v4 setText_6:v24];

  v25 = [(RFSummaryItemPairNumberCardSection *)self text];
  v26 = [v25 copy];
  [v4 setText_7:v26];

  v27 = [(RFSummaryItemPairNumberCardSection *)self button];
  v28 = [v27 copy];
  [v4 setButton_1:v28];

  v29 = [(RFSummaryItemPairNumberCardSection *)self text];
  v30 = [v29 copy];
  [v4 setText_8:v30];

  v31 = [(RFSummaryItemPairNumberCardSection *)self text];
  v32 = [v31 copy];
  [v4 setText_9:v32];

  v33 = [(RFSummaryItemPairNumberCardSection *)self text];
  v34 = [v33 copy];
  [v4 setText_10:v34];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBRFSummaryItemPairNumberCardSection alloc] initWithFacade:self];
  v3 = [(_SFPBRFSummaryItemPairNumberCardSection *)v2 jsonData];

  return v3;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBRFSummaryItemPairNumberCardSection alloc] initWithFacade:self];
  v3 = [(_SFPBRFSummaryItemPairNumberCardSection *)v2 dictionaryRepresentation];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v3.receiver = self;
  v3.super_class = RFSummaryItemPairNumberCardSection;
  [(SFCardSection *)&v3 encodeWithCoder:a3];
}

- (RFSummaryItemPairNumberCardSection)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(SFCardSection *)self init];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v7 = [[_SFPBCardSection alloc] initWithData:v6];
  v8 = [[SFCardSection alloc] initWithProtobuf:v7];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [(SFCardSection *)v8 number];
    [(RFSummaryItemPairNumberCardSection *)v5 setNumber_1:v9];

    v10 = [(SFCardSection *)v8 number];
    [(RFSummaryItemPairNumberCardSection *)v5 setNumber_2:v10];

    v11 = [(SFCardSection *)v8 text];
    [(RFSummaryItemPairNumberCardSection *)v5 setText_1:v11];

    v12 = [(SFCardSection *)v8 text];
    [(RFSummaryItemPairNumberCardSection *)v5 setText_2:v12];

    v13 = [(SFCardSection *)v8 text];
    [(RFSummaryItemPairNumberCardSection *)v5 setText_3:v13];

    v14 = [(SFCardSection *)v8 text];
    [(RFSummaryItemPairNumberCardSection *)v5 setText_4:v14];

    v15 = [(SFCardSection *)v8 text];
    [(RFSummaryItemPairNumberCardSection *)v5 setText_5:v15];

    v16 = [(SFCardSection *)v8 thumbnail];
    [(RFSummaryItemPairNumberCardSection *)v5 setThumbnail_1:v16];

    v17 = [(SFCardSection *)v8 thumbnail];
    [(RFSummaryItemPairNumberCardSection *)v5 setThumbnail_2:v17];

    v18 = [(SFCardSection *)v8 text];
    [(RFSummaryItemPairNumberCardSection *)v5 setText_6:v18];

    v19 = [(SFCardSection *)v8 text];
    [(RFSummaryItemPairNumberCardSection *)v5 setText_7:v19];

    v20 = [(SFCardSection *)v8 button];
    [(RFSummaryItemPairNumberCardSection *)v5 setButton_1:v20];

    v21 = [(SFCardSection *)v8 text];
    [(RFSummaryItemPairNumberCardSection *)v5 setText_8:v21];

    v22 = [(SFCardSection *)v8 text];
    [(RFSummaryItemPairNumberCardSection *)v5 setText_9:v22];

    v23 = [(SFCardSection *)v8 text];
    [(RFSummaryItemPairNumberCardSection *)v5 setText_10:v23];

    v24 = [(SFCardSection *)v8 nextCard];
    [(SFCardSection *)v5 setNextCard:v24];

    v25 = [(SFCardSection *)v8 commands];
    [(SFCardSection *)v5 setCommands:v25];

    v26 = [(SFCardSection *)v8 parameterKeyPaths];
    [(SFCardSection *)v5 setParameterKeyPaths:v26];

    v27 = [(SFCardSection *)v8 cardSectionId];
    [(SFCardSection *)v5 setCardSectionId:v27];

    v28 = [(SFCardSection *)v8 resultIdentifier];
    [(SFCardSection *)v5 setResultIdentifier:v28];

    v29 = [(SFCardSection *)v8 userReportRequest];
    [(SFCardSection *)v5 setUserReportRequest:v29];

    v30 = [(SFCardSection *)v8 command];
    [(SFCardSection *)v5 setCommand:v30];

    v31 = [(SFCardSection *)v8 previewCommand];
    [(SFCardSection *)v5 setPreviewCommand:v31];

    v32 = [(SFCardSection *)v8 previewButtonItems];
    [(SFCardSection *)v5 setPreviewButtonItems:v32];

    v33 = [(SFCardSection *)v8 cardSectionDetail];
    [(SFCardSection *)v5 setCardSectionDetail:v33];

    v34 = [(SFCardSection *)v8 previewButtonItemsTitle];
    [(SFCardSection *)v5 setPreviewButtonItemsTitle:v34];

    v35 = [(SFCardSection *)v8 backgroundColor];
    [(SFCardSection *)v5 setBackgroundColor:v35];

    [(SFCardSection *)v5 setShouldHideInAmbientMode:[(SFCardSection *)v8 shouldHideInAmbientMode]];
    v36 = [(SFCardSection *)v8 leadingSwipeButtonItems];
    [(SFCardSection *)v5 setLeadingSwipeButtonItems:v36];

    v37 = [(SFCardSection *)v8 trailingSwipeButtonItems];
    [(SFCardSection *)v5 setTrailingSwipeButtonItems:v37];

    v38 = [(SFCardSection *)v8 punchoutOptions];
    [(SFCardSection *)v5 setPunchoutOptions:v38];

    v39 = [(SFCardSection *)v8 punchoutPickerTitle];
    [(SFCardSection *)v5 setPunchoutPickerTitle:v39];

    v40 = [(SFCardSection *)v8 punchoutPickerDismissText];
    [(SFCardSection *)v5 setPunchoutPickerDismissText:v40];

    [(SFCardSection *)v5 setCanBeHidden:[(SFCardSection *)v8 canBeHidden]];
    [(SFCardSection *)v5 setHasTopPadding:[(SFCardSection *)v8 hasTopPadding]];
    [(SFCardSection *)v5 setHasBottomPadding:[(SFCardSection *)v8 hasBottomPadding]];
    [(SFCardSection *)v5 setSeparatorStyle:[(SFCardSection *)v8 separatorStyle]];
    v41 = [(SFCardSection *)v8 referencedCommands];
    [(SFCardSection *)v5 setReferencedCommands:v41];

    [(SFCardSection *)v5 setForceEnable3DTouch:[(SFCardSection *)v8 forceEnable3DTouch]];
    [(SFCardSection *)v5 setShouldShowInSmartDialog:[(SFCardSection *)v8 shouldShowInSmartDialog]];
    v42 = [(SFCardSection *)v8 appEntityAnnotation];
    [(SFCardSection *)v5 setAppEntityAnnotation:v42];

    v43 = [(SFCardSection *)v8 emphasisSubjectId];
    [(SFCardSection *)v5 setEmphasisSubjectId:v43];

    [(SFCardSection *)v5 setIncreasedContrastMode:[(SFCardSection *)v8 increasedContrastMode]];
    v44 = [(SFCardSection *)v8 secondaryCommand];
    [(SFCardSection *)v5 setSecondaryCommand:v44];

    [(SFCardSection *)v5 setRequiredLevelOfDetail:[(SFCardSection *)v8 requiredLevelOfDetail]];
    v45 = [(SFCardSection *)v8 racFeedbackSubfeatureId];
    [(SFCardSection *)v5 setRacFeedbackSubfeatureId:v45];

    v46 = [(SFCardSection *)v8 racFeedbackLoggingContent];
    [(SFCardSection *)v5 setRacFeedbackLoggingContent:v46];

    v47 = [(SFCardSection *)v8 copyableItems];
    [(SFCardSection *)v5 setCopyableItems:v47];

    v48 = [(SFCardSection *)v8 applicationBundleIdentifier];
    [(SFCardSection *)v5 setApplicationBundleIdentifier:v48];
  }

  return v5;
}

@end