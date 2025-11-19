@interface SXDataTableView
- (CGPoint)originOffset;
- (id)dataSource;
- (id)initWithDataSource:(id *)a1;
- (id)setDataSource:(id *)result;
- (id)viewForColumnAtIndex:(uint64_t)a1;
- (id)viewForRowAtIndex:(uint64_t)a1;
- (uint64_t)blueprint;
- (uint64_t)indexPathForPoint:(CGFloat)a3;
- (uint64_t)reset;
- (void)draw:(uint64_t)a3 forIndexPath:(uint64_t)a4;
- (void)layoutCellsForBlueprint:(id *)a1;
- (void)prepareDrawingForBlueprint:(id *)a1;
- (void)setBlueprint:;
@end

@implementation SXDataTableView

- (void)prepareDrawingForBlueprint:(id *)a1
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    if ([v3 numberOfRows])
    {
      v5 = 0;
      v83 = *MEMORY[0x1E695F058];
      v84 = *(MEMORY[0x1E695F058] + 8);
      v85 = *(MEMORY[0x1E695F058] + 24);
      v86 = *(MEMORY[0x1E695F058] + 16);
      v87 = v4;
      do
      {
        if ([v4 numberOfColumns])
        {
          v6 = 0;
          do
          {
            [v4 cellRectForIndexPath:{v5, v6}];
            v8 = v7;
            v10 = v9;
            v12 = v11;
            v14 = v13;
            [v4 cellContentRectForIndexPath:{v5, v6}];
            v93 = v16;
            rect1a = v15;
            v90 = v18;
            v92 = v17;
            [v4 rectForColumnDividerAtIndexPath:{v5, v6}];
            v102 = v20;
            v103 = v19;
            v100 = v22;
            v101 = v21;
            [v4 rectForRowDividerAtIndexPath:{v5, v6}];
            v24 = v23;
            rect = v25;
            v27 = v26;
            v29 = v28;
            v173.origin.x = v8;
            v173.origin.y = v10;
            v173.size.width = v12;
            v173.size.height = v14;
            MinX = CGRectGetMinX(v173);
            v97 = v10;
            v98 = v8;
            v174.origin.x = v8;
            v174.origin.y = v10;
            v174.size.width = v12;
            v174.size.height = v14;
            MinY = CGRectGetMinY(v174);
            v175.origin.y = v93;
            v175.origin.x = rect1a;
            v175.size.height = v90;
            v175.size.width = v92;
            v176 = CGRectOffset(v175, MinX, MinY);
            x = v176.origin.x;
            width = v176.size.width;
            y = v176.origin.y;
            height = v176.size.height;
            v176.origin.y = v102;
            v176.origin.x = v103;
            v176.size.height = v100;
            v176.size.width = v101;
            v33 = v12 + CGRectGetWidth(v176);
            v94 = v29;
            v177.origin.x = v24;
            v177.origin.y = rect;
            rect1 = v27;
            v177.size.width = v27;
            v177.size.height = v29;
            v34 = v14 + CGRectGetHeight(v177);
            v35 = [(SXDataTableView *)a1 dataSource];
            v36 = [v35 backgroundColorForRowAtIndex:v5];

            if (v36)
            {
              v167[0] = MEMORY[0x1E69E9820];
              v167[1] = 3221225472;
              v167[2] = __46__SXDataTableView_prepareDrawingForBlueprint___block_invoke;
              v167[3] = &unk_1E8501CE8;
              v169 = v98;
              v170 = v97;
              v171 = v33;
              v172 = v34;
              v168 = v36;
              v37 = MEMORY[0x1DA716BE0](v167);
              [(SXDataTableView *)a1 draw:v37 forIndexPath:v5, v6];
            }

            v38 = [(SXDataTableView *)a1 dataSource];
            v39 = [v38 backgroundColorForColumnAtIndex:v6];

            if (v39)
            {
              v161[0] = MEMORY[0x1E69E9820];
              v161[1] = 3221225472;
              v161[2] = __46__SXDataTableView_prepareDrawingForBlueprint___block_invoke_2;
              v161[3] = &unk_1E8501CE8;
              v163 = v98;
              v164 = v97;
              v165 = v33;
              v166 = v34;
              v162 = v39;
              v40 = MEMORY[0x1DA716BE0](v161);
              [(SXDataTableView *)a1 draw:v40 forIndexPath:v5, v6];
            }

            v41 = [(SXDataTableView *)a1 dataSource];
            v42 = [v41 backgroundColorForCellAtIndexPath:{v5, v6}];

            if (v42)
            {
              v43 = [(SXDataTableView *)a1 dataSource];
              [v43 paddingForCellAtIndexPath:{v5, v6}];
              v45 = v44;
              v47 = v46;
              v82 = v48;
              v49 = x;
              v51 = v50;

              v178.origin.x = v49;
              v178.origin.y = y;
              v178.size.width = width;
              v178.size.height = height;
              v81 = CGRectGetMinX(v178) - v51;
              v179.origin.x = v49;
              v179.origin.y = y;
              v179.size.width = width;
              v179.size.height = height;
              v52 = CGRectGetMinY(v179) - v45;
              v180.origin.x = v49;
              v180.origin.y = y;
              v180.size.width = width;
              v180.size.height = height;
              v53 = v47 + v51 + CGRectGetWidth(v180);
              v181.origin.x = v49;
              v181.origin.y = y;
              v181.size.width = width;
              v181.size.height = height;
              v54 = CGRectGetHeight(v181);
              v155[0] = MEMORY[0x1E69E9820];
              v155[1] = 3221225472;
              v155[2] = __46__SXDataTableView_prepareDrawingForBlueprint___block_invoke_3;
              v155[3] = &unk_1E8501CE8;
              v157 = v81;
              v158 = v52;
              v159 = v53;
              v160 = v82 + v45 + v54;
              v156 = v42;
              v55 = MEMORY[0x1DA716BE0](v155);
              [(SXDataTableView *)a1 draw:v55 forIndexPath:v5, v6];
            }

            v56 = [(SXDataTableView *)a1 dataSource];
            v57 = [v56 rowDividerAtIndex:v5];

            v58 = [v57 color];
            if (v58)
            {
              v59 = v58;
              v182.origin.x = v24;
              v182.size.height = v94;
              v182.origin.y = rect;
              v182.size.width = rect1;
              v184.origin.x = v83;
              v184.origin.y = v84;
              v184.size.height = v85;
              v184.size.width = v86;
              v60 = CGRectEqualToRect(v182, v184);

              if (!v60)
              {
                v149[0] = MEMORY[0x1E69E9820];
                v149[1] = 3221225472;
                v149[2] = __46__SXDataTableView_prepareDrawingForBlueprint___block_invoke_4;
                v149[3] = &unk_1E8501CE8;
                v150 = v57;
                v151 = v24;
                v152 = rect;
                v153 = rect1;
                v154 = v94;
                v61 = MEMORY[0x1DA716BE0](v149);
                [(SXDataTableView *)a1 draw:v61 forIndexPath:v5, v6];
              }
            }

            v62 = [(SXDataTableView *)a1 dataSource];
            v63 = [v62 columnDividerAtIndex:v6];

            v64 = [v63 color];
            if (v64)
            {
              v65 = v64;
              v183.origin.y = v102;
              v183.origin.x = v103;
              v183.size.height = v100;
              v183.size.width = v101;
              v185.origin.x = v83;
              v185.origin.y = v84;
              v185.size.height = v85;
              v185.size.width = v86;
              v66 = CGRectEqualToRect(v183, v185);

              if (!v66)
              {
                v143[0] = MEMORY[0x1E69E9820];
                v143[1] = 3221225472;
                v143[2] = __46__SXDataTableView_prepareDrawingForBlueprint___block_invoke_5;
                v143[3] = &unk_1E8501CE8;
                v144 = v63;
                v145 = v103;
                v146 = v102;
                v147 = v101;
                v148 = v100;
                v67 = MEMORY[0x1DA716BE0](v143);
                [(SXDataTableView *)a1 draw:v67 forIndexPath:v5, v6];
              }
            }

            v68 = [(SXDataTableView *)a1 dataSource];
            v69 = [v68 cellBorderForCellAtIndexPath:{v5, v6}];

            if (v69)
            {
              v137[0] = MEMORY[0x1E69E9820];
              v137[1] = 3221225472;
              v137[2] = __46__SXDataTableView_prepareDrawingForBlueprint___block_invoke_6;
              v137[3] = &unk_1E8501CE8;
              v139 = v98;
              v140 = v97;
              v141 = v12;
              v142 = v14;
              v138 = v69;
              v70 = MEMORY[0x1DA716BE0](v137);
              [(SXDataTableView *)a1 draw:v70 forIndexPath:v5, v6];
            }

            ++v6;
            v4 = v87;
          }

          while (v6 < [v87 numberOfColumns]);
        }

        ++v5;
      }

      while (v5 < [v4 numberOfRows]);
    }

    v134[0] = 0;
    v134[1] = v134;
    v134[2] = 0x4010000000;
    v134[3] = &unk_1D83A8029;
    v71 = *(MEMORY[0x1E695F058] + 16);
    v135 = *MEMORY[0x1E695F058];
    v136 = v71;
    v131[0] = 0;
    v131[1] = v131;
    v131[2] = 0x4010000000;
    v131[3] = &unk_1D83A8029;
    v132 = v135;
    v133 = v71;
    v128[0] = 0;
    v128[1] = v128;
    v128[2] = 0x4010000000;
    v128[3] = &unk_1D83A8029;
    v129 = v135;
    v130 = v71;
    v125[0] = 0;
    v125[1] = v125;
    v125[2] = 0x4010000000;
    v125[3] = &unk_1D83A8029;
    v126 = v135;
    v127 = v71;
    objc_initWeak(&location, a1);
    v120[0] = MEMORY[0x1E69E9820];
    v120[1] = 3221225472;
    v120[2] = __46__SXDataTableView_prepareDrawingForBlueprint___block_invoke_7;
    v120[3] = &unk_1E8501D10;
    objc_copyWeak(&v123, &location);
    v122 = v134;
    v72 = v4;
    v121 = v72;
    v73 = MEMORY[0x1DA716BE0](v120);
    [(SXDataTableView *)a1 draw:v73 forIndexPath:0, 0x7FFFFFFFFFFFFFFFLL];
    v116[0] = MEMORY[0x1E69E9820];
    v116[1] = 3221225472;
    v116[2] = __46__SXDataTableView_prepareDrawingForBlueprint___block_invoke_8;
    v116[3] = &unk_1E8501D10;
    objc_copyWeak(&v119, &location);
    v118 = v131;
    v74 = v72;
    v117 = v74;
    v75 = MEMORY[0x1DA716BE0](v116);
    -[SXDataTableView draw:forIndexPath:](a1, v75, [v74 numberOfRows] - 1, 0x7FFFFFFFFFFFFFFFLL);
    v110[0] = MEMORY[0x1E69E9820];
    v110[1] = 3221225472;
    v110[2] = __46__SXDataTableView_prepareDrawingForBlueprint___block_invoke_9;
    v110[3] = &unk_1E8501D38;
    objc_copyWeak(&v115, &location);
    v112 = v125;
    v76 = v74;
    v111 = v76;
    v113 = v134;
    v114 = v131;
    v77 = MEMORY[0x1DA716BE0](v110);
    -[SXDataTableView draw:forIndexPath:](a1, v77, 0x7FFFFFFFFFFFFFFFLL, [v76 numberOfColumns] - 1);
    v104[0] = MEMORY[0x1E69E9820];
    v104[1] = 3221225472;
    v104[2] = __46__SXDataTableView_prepareDrawingForBlueprint___block_invoke_10;
    v104[3] = &unk_1E8501D60;
    objc_copyWeak(&v109, &location);
    v106 = v128;
    v107 = v134;
    v105 = v76;
    v108 = v131;
    v78 = MEMORY[0x1DA716BE0](v104);
    [(SXDataTableView *)a1 draw:v78 forIndexPath:0x7FFFFFFFFFFFFFFFLL, 0];
    v79 = a1[56];
    [v79 enumerateKeysAndObjectsUsingBlock:&__block_literal_global_9_1];

    v80 = a1[55];
    [v80 enumerateKeysAndObjectsUsingBlock:&__block_literal_global_11];

    [a1 setNeedsDisplay];
    objc_destroyWeak(&v109);

    objc_destroyWeak(&v115);
    objc_destroyWeak(&v119);

    objc_destroyWeak(&v123);
    objc_destroyWeak(&location);
    _Block_object_dispose(v125, 8);
    _Block_object_dispose(v128, 8);
    _Block_object_dispose(v131, 8);
    _Block_object_dispose(v134, 8);
  }
}

void __24__SXDataTableView_reset__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v3 removeFromSuperview];
  }
}

void __24__SXDataTableView_reset__block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v3 removeFromSuperview];
  }
}

void __46__SXDataTableView_prepareDrawingForBlueprint___block_invoke(uint64_t a1, CGContext *a2, double a3, double a4)
{
  v15 = CGRectOffset(*(a1 + 40), -a3, -a4);
  x = v15.origin.x;
  y = v15.origin.y;
  width = v15.size.width;
  height = v15.size.height;
  CGContextSetFillColorWithColor(a2, [*(a1 + 32) CGColor]);
  v10 = x;
  v11 = y;
  v12 = width;
  v13 = height;

  CGContextFillRect(a2, *&v10);
}

void __46__SXDataTableView_prepareDrawingForBlueprint___block_invoke_2(uint64_t a1, CGContext *a2, double a3, double a4)
{
  v15 = CGRectOffset(*(a1 + 40), -a3, -a4);
  x = v15.origin.x;
  y = v15.origin.y;
  width = v15.size.width;
  height = v15.size.height;
  CGContextSetFillColorWithColor(a2, [*(a1 + 32) CGColor]);
  v10 = x;
  v11 = y;
  v12 = width;
  v13 = height;

  CGContextFillRect(a2, *&v10);
}

void __46__SXDataTableView_prepareDrawingForBlueprint___block_invoke_3(uint64_t a1, CGContext *a2, double a3, double a4)
{
  v15 = CGRectOffset(*(a1 + 40), -a3, -a4);
  x = v15.origin.x;
  y = v15.origin.y;
  width = v15.size.width;
  height = v15.size.height;
  CGContextSetFillColorWithColor(a2, [*(a1 + 32) CGColor]);
  v10 = x;
  v11 = y;
  v12 = width;
  v13 = height;

  CGContextFillRect(a2, *&v10);
}

void __46__SXDataTableView_prepareDrawingForBlueprint___block_invoke_4(uint64_t a1, CGContext *a2, double a3, double a4)
{
  v8 = [*(a1 + 32) color];
  CGContextSetFillColorWithColor(a2, [v8 CGColor]);

  v10 = CGRectOffset(*(a1 + 40), -a3, -a4);

  CGContextFillRect(a2, v10);
}

void __46__SXDataTableView_prepareDrawingForBlueprint___block_invoke_5(uint64_t a1, CGContext *a2, double a3, double a4)
{
  v8 = [*(a1 + 32) color];
  CGContextSetFillColorWithColor(a2, [v8 CGColor]);

  v10 = CGRectOffset(*(a1 + 40), -a3, -a4);

  CGContextFillRect(a2, v10);
}

void __46__SXDataTableView_prepareDrawingForBlueprint___block_invoke_6(uint64_t a1, CGContext *a2, double a3, double a4)
{
  v99 = CGRectOffset(*(a1 + 40), -a3, -a4);
  x = v99.origin.x;
  y = v99.origin.y;
  width = v99.size.width;
  height = v99.size.height;
  v10 = [*(a1 + 32) top];
  if (v10)
  {
    v11 = v10;
    v12 = [*(a1 + 32) top];
    if (v12)
    {
      v13 = v12;
      v14 = [*(a1 + 32) top];
      [v14 width];
      v16 = v15;

      if (v16 > 0.0)
      {
        v100.origin.x = x;
        v100.origin.y = y;
        v100.size.width = width;
        v100.size.height = height;
        MinX = CGRectGetMinX(v100);
        v101.origin.x = x;
        v101.origin.y = y;
        v101.size.width = width;
        v101.size.height = height;
        MinY = CGRectGetMinY(v101);
        v102.origin.x = x;
        v102.origin.y = y;
        v102.size.width = width;
        v102.size.height = height;
        v19 = CGRectGetWidth(v102);
        v20 = [*(a1 + 32) top];
        [v20 width];
        v22 = v21;

        v23 = [*(a1 + 32) top];
        v24 = [v23 color];
        CGContextSetFillColorWithColor(a2, [v24 CGColor]);

        v103.origin.x = MinX;
        v103.origin.y = MinY;
        v103.size.width = v19;
        v103.size.height = v22;
        CGContextFillRect(a2, v103);
      }
    }

    else
    {
    }
  }

  v25 = [*(a1 + 32) right];
  if (v25)
  {
    v26 = v25;
    v27 = [*(a1 + 32) right];
    if (v27)
    {
      v28 = v27;
      v29 = [*(a1 + 32) right];
      [v29 width];
      v31 = v30;

      if (v31 > 0.0)
      {
        v104.origin.x = x;
        v104.origin.y = y;
        v104.size.width = width;
        v104.size.height = height;
        MaxX = CGRectGetMaxX(v104);
        v33 = [*(a1 + 32) right];
        [v33 width];
        recta = MaxX - v34;
        v105.origin.x = x;
        v105.origin.y = y;
        v105.size.width = width;
        v105.size.height = height;
        v35 = CGRectGetMinY(v105);
        v36 = [*(a1 + 32) top];
        [v36 width];
        v38 = v35 + v37;
        v39 = [*(a1 + 32) right];
        [v39 width];
        v41 = v40;
        v106.origin.x = x;
        v106.origin.y = y;
        v106.size.width = width;
        v106.size.height = height;
        v42 = CGRectGetHeight(v106);
        v43 = [*(a1 + 32) top];
        [v43 width];
        v45 = v44;
        v46 = [*(a1 + 32) bottom];
        [v46 width];
        v48 = v42 - (v45 + v47);

        v49 = [*(a1 + 32) right];
        v50 = [v49 color];
        CGContextSetFillColorWithColor(a2, [v50 CGColor]);

        v107.origin.x = recta;
        v107.origin.y = v38;
        v107.size.width = v41;
        v107.size.height = v48;
        CGContextFillRect(a2, v107);
      }
    }

    else
    {
    }
  }

  v51 = [*(a1 + 32) bottom];
  if (v51)
  {
    v52 = v51;
    v53 = [*(a1 + 32) bottom];
    if (v53)
    {
      v54 = v53;
      v55 = [*(a1 + 32) bottom];
      [v55 width];
      v57 = v56;

      if (v57 > 0.0)
      {
        v108.origin.x = x;
        v108.origin.y = y;
        v108.size.width = width;
        v108.size.height = height;
        v58 = CGRectGetMinX(v108);
        v109.origin.x = x;
        v109.origin.y = y;
        v109.size.width = width;
        v109.size.height = height;
        MaxY = CGRectGetMaxY(v109);
        v60 = [*(a1 + 32) bottom];
        [v60 width];
        v62 = MaxY - v61;
        v110.origin.x = x;
        v110.origin.y = y;
        v110.size.width = width;
        v110.size.height = height;
        v63 = CGRectGetWidth(v110);
        v64 = [*(a1 + 32) bottom];
        [v64 width];
        v66 = v65;

        v67 = [*(a1 + 32) bottom];
        v68 = [v67 color];
        CGContextSetFillColorWithColor(a2, [v68 CGColor]);

        v111.origin.x = v58;
        v111.origin.y = v62;
        v111.size.width = v63;
        v111.size.height = v66;
        CGContextFillRect(a2, v111);
      }
    }

    else
    {
    }
  }

  v69 = [*(a1 + 32) left];
  if (v69)
  {
    rect = v69;
    v70 = [*(a1 + 32) left];
    if (v70)
    {
      v71 = v70;
      v72 = [*(a1 + 32) left];
      [v72 width];
      v74 = v73;

      if (v74 > 0.0)
      {
        v112.origin.x = x;
        v112.origin.y = y;
        v112.size.width = width;
        v112.size.height = height;
        v75 = CGRectGetMinX(v112);
        v113.origin.x = x;
        v113.origin.y = y;
        v113.size.width = width;
        v113.size.height = height;
        v76 = CGRectGetMinY(v113);
        v77 = [*(a1 + 32) top];
        [v77 width];
        v79 = v76 + v78;
        v80 = [*(a1 + 32) left];
        [v80 width];
        v82 = v81;
        v114.origin.x = x;
        v114.origin.y = y;
        v114.size.width = width;
        v114.size.height = height;
        v83 = CGRectGetHeight(v114);
        v84 = [*(a1 + 32) top];
        [v84 width];
        v86 = v85;
        v87 = [*(a1 + 32) bottom];
        [v87 width];
        v89 = v83 - (v86 + v88);

        v90 = [*(a1 + 32) left];
        v91 = [v90 color];
        CGContextSetFillColorWithColor(a2, [v91 CGColor]);

        v92 = v75;
        v93 = v79;
        v94 = v82;
        v95 = v89;

        CGContextFillRect(a2, *&v92);
      }
    }

    else
    {
    }
  }
}

void __46__SXDataTableView_prepareDrawingForBlueprint___block_invoke_11(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v3 setNeedsDisplay];
  }
}

void __46__SXDataTableView_prepareDrawingForBlueprint___block_invoke_12(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v3 setNeedsDisplay];
  }
}

- (CGPoint)originOffset
{
  v2 = *MEMORY[0x1E695EFF8];
  v3 = *(MEMORY[0x1E695EFF8] + 8);
  result.y = v3;
  result.x = v2;
  return result;
}

- (id)initWithDataSource:(id *)a1
{
  v3 = a2;
  if (a1)
  {
    v6.receiver = a1;
    v6.super_class = SXDataTableView;
    v4 = objc_msgSendSuper2(&v6, sel_initWithFrame_, *MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24));
    a1 = v4;
    if (v4)
    {
      objc_storeWeak(v4 + 52, v3);
    }
  }

  return a1;
}

- (void)setBlueprint:
{
  OUTLINED_FUNCTION_7();
  v13 = v0;
  if (v1)
  {
    [(SXDataTableView *)v1 reset];
    v3 = [v13 tableSize];
    [OUTLINED_FUNCTION_4(v3 v4];
    [v1 setFrame:{0.0, 0.0, v2, v11}];
    [(SXDataTableView *)v1 layoutCellsForBlueprint:v13];
    [(SXDataTableView *)v1 prepareDrawingForBlueprint:v13];
    objc_storeStrong(v1 + 54, v0);
  }
}

- (uint64_t)reset
{
  if (result)
  {
    v1 = result;
    [*(result + 440) enumerateKeysAndObjectsUsingBlock:&__block_literal_global_92];
    [*(v1 + 448) enumerateKeysAndObjectsUsingBlock:&__block_literal_global_2_0];
    v2 = [MEMORY[0x1E695DF90] dictionary];
    v3 = *(v1 + 440);
    *(v1 + 440) = v2;

    v4 = [MEMORY[0x1E695DF90] dictionary];
    v5 = *(v1 + 448);
    *(v1 + 448) = v4;

    return MEMORY[0x1EEE66BB8](v4, v5);
  }

  return result;
}

- (void)layoutCellsForBlueprint:(id *)a1
{
  v38 = a2;
  if (a1 && [v38 numberOfRows])
  {
    v3 = 0;
    while (1)
    {
      v4 = [(SXDataTableView *)a1 viewForRowAtIndex:v3];
      v5 = v38;
      if (v4)
      {
        [v38 rectForRowAtIndex:v3];
        [v4 setFrame:?];
        [a1 addSubview:v4];
        v5 = v38;
      }

      if ([v5 numberOfColumns])
      {
        break;
      }

LABEL_22:

      if (++v3 >= [v38 numberOfRows])
      {
        goto LABEL_23;
      }
    }

    v6 = 0;
    if (v4)
    {
      v7 = v4;
    }

    else
    {
      v7 = a1;
    }

    while (1)
    {
      v8 = v7;
      v9 = [(SXDataTableView *)a1 viewForColumnAtIndex:v6];
      if (v9)
      {
        [v38 rectForColumnAtIndex:v6];
        v10 = v9;

        OUTLINED_FUNCTION_5();
        [v11 setFrame:?];
        [a1 addSubview:v10];
        v8 = v10;
      }

      OUTLINED_FUNCTION_9();
      [v12 cellRectForIndexPath:?];
      OUTLINED_FUNCTION_9();
      [v13 cellContentRectForIndexPath:?];
      v15 = v14;
      v17 = v16;
      v19 = v18;
      v21 = v20;
      WeakRetained = objc_loadWeakRetained(a1 + 52);
      v23 = [WeakRetained dataTableView:a1 viewForCellAtIndexPath:v3 constraintToSize:{v6, v19, v21}];

      v24 = objc_loadWeakRetained(a1 + 53);
      OUTLINED_FUNCTION_9();
      v26 = [v25 verticalAlignmentForCellAtIndexPath:?];

      [v23 frame];
      v28 = v27;
      [v23 frame];
      rect = v29;
      if ((v26 & 0xFFFFFFFFFFFFFFFDLL) != 0)
      {
        if (v26 != 3)
        {
          goto LABEL_17;
        }

        [v23 frame];
        Height = CGRectGetHeight(v40);
      }

      else
      {
        v21 = v21 * 0.5;
        [v23 frame];
        Height = CGRectGetHeight(v41) * 0.5;
      }

      v17 = v17 + v21 - Height;
LABEL_17:
      v31 = objc_loadWeakRetained(a1 + 53);
      OUTLINED_FUNCTION_9();
      v33 = [v32 horizontalAlignmentForCellAtIndexPath:?];

      v34 = v19 - v28;
      if (v33 == 3)
      {
        goto LABEL_20;
      }

      if (v33 == 2)
      {
        v34 = v34 * 0.5;
LABEL_20:
        v15 = v15 + v34;
      }

      OUTLINED_FUNCTION_5();
      MinX = CGRectGetMinX(v42);
      OUTLINED_FUNCTION_5();
      MinY = CGRectGetMinY(v43);
      v44.origin.x = v15;
      v44.origin.y = v17;
      v44.size.width = v28;
      v44.size.height = rect;
      v45 = CGRectOffset(v44, MinX, MinY);
      [v23 setFrame:{v45.origin.x, v45.origin.y, v45.size.width, v45.size.height}];
      [v8 addSubview:v23];

      if (++v6 >= [v38 numberOfColumns])
      {
        goto LABEL_22;
      }
    }
  }

LABEL_23:
}

- (id)viewForRowAtIndex:(uint64_t)a1
{
  if (a1)
  {
    v5 = MEMORY[0x1E696AD98];
    v6 = *(a1 + 440);
    [v5 numberWithUnsignedInteger:a2];
    objc_claimAutoreleasedReturnValue();
    v7 = [OUTLINED_FUNCTION_8() objectForKey:v2];

    objc_opt_class();
    OUTLINED_FUNCTION_3();
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }

    v9 = v7;
    if (!v8)
    {
      v10 = [MEMORY[0x1E695DFB0] null];

      if (v7 == v10)
      {
        v9 = 0;
      }

      else
      {
        v11 = OUTLINED_FUNCTION_11();
        v12 = objc_opt_respondsToSelector();

        if ((v12 & 1) != 0 && (v12 = OUTLINED_FUNCTION_11(), [v12 dataTableView:a1 drawViewForRowAtIndex:a2], v9 = objc_claimAutoreleasedReturnValue(), v12, v9))
        {
          v13 = *(a1 + 440);
          v14 = MEMORY[0x1E696AD98];
          v12 = v13;
          v15 = [v14 numberWithUnsignedInteger:a2];
          OUTLINED_FUNCTION_10(v15);
        }

        else
        {
          v16 = *(a1 + 440);
          v17 = MEMORY[0x1E695DFB0];
          v18 = v16;
          v14 = [v17 null];
          [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a2];
          objc_claimAutoreleasedReturnValue();
          [OUTLINED_FUNCTION_8() setObject:v14 forKey:v12];

          v9 = 0;
        }
      }
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)viewForColumnAtIndex:(uint64_t)a1
{
  if (a1)
  {
    v5 = MEMORY[0x1E696AD98];
    v6 = *(a1 + 448);
    [v5 numberWithUnsignedInteger:a2];
    objc_claimAutoreleasedReturnValue();
    v7 = [OUTLINED_FUNCTION_8() objectForKey:v2];

    objc_opt_class();
    OUTLINED_FUNCTION_3();
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }

    v9 = v7;
    if (!v8)
    {
      v10 = [MEMORY[0x1E695DFB0] null];

      if (v7 == v10)
      {
        v9 = 0;
      }

      else
      {
        v11 = OUTLINED_FUNCTION_11();
        v12 = objc_opt_respondsToSelector();

        if ((v12 & 1) != 0 && (v12 = OUTLINED_FUNCTION_11(), [v12 dataTableView:a1 drawViewForColumnAtIndex:a2], v9 = objc_claimAutoreleasedReturnValue(), v12, v9))
        {
          v13 = *(a1 + 448);
          v14 = MEMORY[0x1E696AD98];
          v12 = v13;
          v15 = [v14 numberWithUnsignedInteger:a2];
          OUTLINED_FUNCTION_10(v15);
        }

        else
        {
          v16 = *(a1 + 448);
          v17 = MEMORY[0x1E695DFB0];
          v18 = v16;
          v14 = [v17 null];
          [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a2];
          objc_claimAutoreleasedReturnValue();
          [OUTLINED_FUNCTION_8() setObject:v14 forKey:v12];

          v9 = 0;
        }
      }
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)dataSource
{
  if (WeakRetained)
  {
    WeakRetained = objc_loadWeakRetained(WeakRetained + 53);
    v1 = vars8;
  }

  return WeakRetained;
}

- (uint64_t)indexPathForPoint:(CGFloat)a3
{
  if (!a1)
  {
    return 0;
  }

  if (![*(a1 + 432) numberOfRows])
  {
    return -1;
  }

  v5 = 0;
  v6 = -1;
  do
  {
    [OUTLINED_FUNCTION_6() rectForRowAtIndex:v5];
    v9.x = a2;
    v9.y = a3;
    if (CGRectContainsPoint(v11, v9) && [OUTLINED_FUNCTION_6() numberOfColumns])
    {
      v7 = 0;
      while (1)
      {
        [OUTLINED_FUNCTION_6() rectForColumnAtIndex:v7];
        v10.x = a2;
        v10.y = a3;
        if (CGRectContainsPoint(v12, v10))
        {
          break;
        }

        if (++v7 >= [OUTLINED_FUNCTION_6() numberOfColumns])
        {
          goto LABEL_11;
        }
      }

      v6 = v5;
    }

LABEL_11:
    ++v5;
  }

  while (v5 < [OUTLINED_FUNCTION_6() numberOfRows]);
  return v6;
}

- (uint64_t)blueprint
{
  if (result)
  {
    return *(result + 432);
  }

  return result;
}

- (void)draw:(uint64_t)a3 forIndexPath:(uint64_t)a4
{
  v13 = a2;
  if (a1)
  {
    v7 = [(SXDataTableView *)a1 viewForRowAtIndex:a3];
    v8 = [(SXDataTableView *)a1 viewForColumnAtIndex:a4];
    v9 = v8;
    if (v7)
    {
      v10 = v7;
    }

    else
    {
      v10 = a1;
    }

    if (!v8)
    {
      v8 = v10;
    }

    v11 = [(SXDataTableDrawView *)v8 drawBlocks];
    v12 = [v13 copy];
    [v11 addObject:v12];
  }
}

void __46__SXDataTableView_prepareDrawingForBlueprint___block_invoke_7()
{
  OUTLINED_FUNCTION_7();
  WeakRetained = objc_loadWeakRetained((v3 + 48));
  v5 = [(SXDataTableView *)WeakRetained dataSource];
  v23 = [v5 tableBorder];

  v6 = [v23 top];

  if (v6)
  {
    v7 = [*(v1 + 32) tableSize];
    v15 = [OUTLINED_FUNCTION_4(v7 v8];
    [v15 width];
    OUTLINED_FUNCTION_1_1();
    v16[4] = 0;
    v16[5] = 0;
    v16[6] = v2;
    v16[7] = v17;

    v18 = [v23 top];
    v19 = [v18 color];
    [v19 CGColor];
    v20 = OUTLINED_FUNCTION_3();
    CGContextSetFillColorWithColor(v20, v21);

    v25.origin.x = OUTLINED_FUNCTION_0_6(*(v1 + 40));
    CGContextFillRect(v0, v25);
  }
}

void __46__SXDataTableView_prepareDrawingForBlueprint___block_invoke_8()
{
  OUTLINED_FUNCTION_7();
  WeakRetained = objc_loadWeakRetained((v2 + 48));
  v4 = [(SXDataTableView *)WeakRetained dataSource];
  v27 = [v4 tableBorder];

  v5 = [v27 bottom];

  if (v5)
  {
    [*(v1 + 32) tableSize];
    v7 = v6;
    v8 = [v27 bottom];
    [v8 width];
    v10 = v7 - v9;
    v11 = [*(v1 + 32) tableSize];
    v19 = [OUTLINED_FUNCTION_4(v11 v12];
    [v19 width];
    OUTLINED_FUNCTION_1_1();
    *(v20 + 32) = 0;
    *(v20 + 40) = v10;
    *(v20 + 48) = v7;
    *(v20 + 56) = v21;

    v22 = [v27 bottom];
    v23 = [v22 color];
    [v23 CGColor];
    v24 = OUTLINED_FUNCTION_3();
    CGContextSetFillColorWithColor(v24, v25);

    v29.origin.x = OUTLINED_FUNCTION_0_6(*(v1 + 40));
    CGContextFillRect(v0, v29);
  }
}

void __46__SXDataTableView_prepareDrawingForBlueprint___block_invoke_9()
{
  OUTLINED_FUNCTION_7();
  WeakRetained = objc_loadWeakRetained((v3 + 64));
  v5 = [(SXDataTableView *)WeakRetained dataSource];
  v37 = [v5 tableBorder];

  v6 = [v37 right];

  if (v6)
  {
    v7 = [*(v1 + 32) tableSize];
    v15 = [OUTLINED_FUNCTION_4(v7 v8];
    [v15 width];
    v17 = v2 - v16;
    v40.origin.x = OUTLINED_FUNCTION_0_6(*(v1 + 48));
    CGRectGetHeight(v40);
    v26 = [OUTLINED_FUNCTION_4(v18 v19];
    [v26 width];
    v28 = v27;
    [*(v1 + 32) tableSize];
    v41.origin.x = OUTLINED_FUNCTION_0_6(*(v1 + 48));
    CGRectGetHeight(v41);
    v42.origin.x = OUTLINED_FUNCTION_0_6(*(v1 + 56));
    CGRectGetHeight(v42);
    OUTLINED_FUNCTION_1_1();
    *(v29 + 32) = v17;
    *(v29 + 40) = v2;
    *(v29 + 48) = v28;
    *(v29 + 56) = v30;

    v31 = [v37 right];
    v32 = [v31 color];
    [v32 CGColor];
    v33 = OUTLINED_FUNCTION_3();
    CGContextSetFillColorWithColor(v33, v34);

    v43.origin.x = OUTLINED_FUNCTION_0_6(*(v1 + 40));
    CGContextFillRect(v0, v43);
  }
}

void __46__SXDataTableView_prepareDrawingForBlueprint___block_invoke_10()
{
  OUTLINED_FUNCTION_7();
  WeakRetained = objc_loadWeakRetained((v3 + 64));
  v5 = [(SXDataTableView *)WeakRetained dataSource];
  v25 = [v5 tableBorder];

  v6 = [v25 left];

  if (v6)
  {
    v27.origin.x = OUTLINED_FUNCTION_0_6(*(v1 + 48));
    CGRectGetHeight(v27);
    v15 = [OUTLINED_FUNCTION_4(v7 v8];
    [v15 width];
    v17 = v16;
    [*(v1 + 32) tableSize];
    v28.origin.x = OUTLINED_FUNCTION_0_6(*(v1 + 48));
    CGRectGetHeight(v28);
    v29.origin.x = OUTLINED_FUNCTION_0_6(*(v1 + 56));
    CGRectGetHeight(v29);
    OUTLINED_FUNCTION_1_1();
    v18[4] = 0;
    v18[5] = v2;
    v18[6] = v17;
    v18[7] = v19;

    v20 = [v25 left];
    v21 = [v20 color];
    [v21 CGColor];
    v22 = OUTLINED_FUNCTION_3();
    CGContextSetFillColorWithColor(v22, v23);

    v30.origin.x = OUTLINED_FUNCTION_0_6(*(v1 + 40));
    CGContextFillRect(v0, v30);
  }
}

- (id)setDataSource:(id *)result
{
  if (result)
  {
    return objc_storeWeak(result + 53, a2);
  }

  return result;
}

@end