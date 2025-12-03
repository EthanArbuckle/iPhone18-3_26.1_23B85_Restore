@interface BKDisplayAnnotationContainedSubnodeRenderer
- (CGSize)_getFrames:(CGRect *)frames ofAnnotations:(id)annotations fixSuperlayer:(id)superlayer scale:(double)scale;
- (void)layoutAnnotationStack:(id)stack;
- (void)regenerateLayerTree;
- (void)styleSheetDidChange;
@end

@implementation BKDisplayAnnotationContainedSubnodeRenderer

- (void)layoutAnnotationStack:(id)stack
{
  stackCopy = stack;
  annotation = [(BKDisplayAnnotationRenderer *)self annotation];
  annotationController = [annotation annotationController];
  rootLayer = [annotationController rootLayer];
  v104 = annotationController;
  transformLayer = [annotationController transformLayer];
  v99 = rootLayer;
  [rootLayer rasterizationScale];
  v9 = v8;
  v98 = transformLayer;
  [transformLayer bounds];
  v11 = v10;
  v102 = v12;
  v96 = v13;
  v15 = v14;
  selfCopy = self;
  layer = [(BKDisplayAnnotationRenderer *)self layer];
  [layer frame];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v24 = +[NSMutableOrderedSet orderedSetWithCapacity:](NSMutableOrderedSet, "orderedSetWithCapacity:", [stackCopy count]);
  v107 = +[NSMutableDictionary dictionary];
  v116 = 0u;
  v117 = 0u;
  v118 = 0u;
  v119 = 0u;
  v25 = stackCopy;
  v26 = [v25 countByEnumeratingWithState:&v116 objects:v122 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v117;
    do
    {
      for (i = 0; i != v27; i = i + 1)
      {
        if (*v117 != v28)
        {
          objc_enumerationMutation(v25);
        }

        v30 = *(*(&v116 + 1) + 8 * i);
        section = [v30 section];
        if (section)
        {
          v32 = section;
        }

        else
        {
          v32 = &stru_1001013E0;
        }

        [v24 addObject:v32];
        v33 = [v107 objectForKey:v32];
        if (!v33)
        {
          v33 = +[NSMutableArray array];
          [v107 setObject:v33 forKey:v32];
        }

        [v33 addObject:v30];
      }

      v27 = [v25 countByEnumeratingWithState:&v116 objects:v122 count:16];
    }

    while (v27);
  }

  v34 = +[NSMutableArray array];
  v112 = 0u;
  v113 = 0u;
  v114 = 0u;
  v115 = 0u;
  v35 = v24;
  v36 = [v35 countByEnumeratingWithState:&v112 objects:v121 count:16];
  p_isa = &selfCopy->super.super.isa;
  v103 = v35;
  if (v36)
  {
    v38 = v36;
    v106 = *v113;
    do
    {
      for (j = 0; j != v38; j = j + 1)
      {
        if (*v113 != *&v106)
        {
          objc_enumerationMutation(v35);
        }

        v40 = *(*(&v112 + 1) + 8 * j);
        if ([v40 length])
        {
          v41 = [p_isa[5] objectForKey:v40];
          if (!v41)
          {
            v42 = v25;
            v43 = selfCopy;
            if (!selfCopy->_sectionTitleAnnotations)
            {
              v44 = +[NSMutableDictionary dictionary];
              sectionTitleAnnotations = selfCopy->_sectionTitleAnnotations;
              selfCopy->_sectionTitleAnnotations = v44;
            }

            v41 = [BKDisplayAnnotation annotationWithString:v40];
            [v41 setAnnotationController:v104];
            v46 = +[BKDisplayAnnotationStyle emphasizedStyle];
            [v41 setStyleModifier:v46];

            [(NSMutableDictionary *)v43->_sectionTitleAnnotations setObject:v41 forKey:v40];
            v25 = v42;
            v35 = v103;
          }

          [v34 addObject:v41];

          p_isa = &selfCopy->super.super.isa;
        }

        v47 = [v107 objectForKey:v40];
        [v34 addObjectsFromArray:v47];
      }

      v38 = [v35 countByEnumeratingWithState:&v112 objects:v121 count:16];
    }

    while (v38);
  }

  v48 = &v92 - 4 * __chkstk_darwin([v34 count]);
  v95 = v9;
  [p_isa _getFrames:v48 ofAnnotations:v34 fixSuperlayer:layer scale:*&v9];
  v106 = v49;
  v51 = v50;
  v52 = annotation;
  subnodeScreenEdgeTreatment = [annotation subnodeScreenEdgeTreatment];
  v97 = &v92;
  if (subnodeScreenEdgeTreatment == 2)
  {
    v123.origin.x = v11;
    v94 = v11;
    v54 = v102;
    v123.origin.y = v102;
    v55 = *&v96;
    *&v123.size.width = v96;
    v123.size.height = v15;
    MaxX = CGRectGetMaxX(v123);
    v93 = v15;
    v57 = MaxX;
    v124.origin.x = v17;
    v124.origin.y = v19;
    v124.size.width = v21;
    v124.size.height = v23;
    v58 = v57 - (v106 + CGRectGetMaxX(v124));
    if (v58 >= 0.0)
    {
      v59 = v21;
    }

    else
    {
      v59 = v21 + v58;
    }

    v125.size.height = v93;
    v125.origin.x = v94;
    v125.origin.y = v54;
    v125.size.width = v55;
    MaxY = CGRectGetMaxY(v125);
    v126.origin.x = v17;
    v126.origin.y = v19;
    v126.size.width = v21;
    v126.size.height = v23;
    v61 = 0.0;
    v62 = fmin(MaxY - (v51 + CGRectGetMinY(v126)), 0.0);
  }

  else
  {
    v63 = subnodeScreenEdgeTreatment;
    v127.origin.x = v17;
    v127.origin.y = v19;
    v127.size.width = v21;
    v127.size.height = v23;
    v64 = CGRectGetMaxX(v127);
    v128.size.height = v15;
    v65 = v19;
    v66 = v23;
    v67 = v106;
    v68 = v106 + v64;
    v128.origin.x = v11;
    v128.origin.y = v102;
    *&v128.size.width = v96;
    v69 = CGRectGetMaxX(v128);
    v129.origin.x = v17;
    v129.origin.y = v65;
    v129.size.width = v21;
    v129.size.height = v66;
    v70 = CGRectGetMinX(v129) >= v67;
    if (v63 != 1)
    {
      v70 = v63;
    }

    v72 = v68 > v69 && v63 == 0 || v70;
    v62 = 0.0;
    if (v72 == 1)
    {
      v59 = 0.0;
    }

    else
    {
      v59 = v21;
    }

    if (v72 == 1)
    {
      v61 = 1.0;
    }

    else
    {
      v61 = 0.0;
    }

    [v52 setSubnodeScreenEdgeTreatment:?];
  }

  v73 = p_isa[4];
  v74 = objc_alloc_init(BKDisplayAnnotationStyleSheet);
  v75 = +[BKDisplayAnnotationStyle rectangleStyle];
  [(BKDisplayAnnotationStyleSheet *)v74 setBaseStyle:v75];

  v76 = +[BKDisplayAnnotationStyle textBackgroundStyle];
  [(BKDisplayAnnotationStyleSheet *)v74 setStyleModifier:v76];

  v77 = [BKDisplayAnnotationShapeContent contentWithSize:v106, v51];
  if (!v73)
  {
    v73 = [(BKDisplayAnnotationStyleSheet *)v74 newLayerForContent:v77 scale:*&v95];
  }

  v95 = v77;
  v96 = v74;
  [(BKDisplayAnnotationStyleSheet *)v74 applyToLayer:v73 forContent:v77];
  v78 = 0.0;
  [v73 setAnchorPoint:{v61, 0.0}];
  [v73 setPosition:{v59, v62}];
  [layer insertSublayer:v73 atIndex:0];
  objc_storeStrong(p_isa + 4, v73);
  v110 = 0u;
  v111 = 0u;
  v108 = 0u;
  v109 = 0u;
  v79 = v34;
  v80 = [(NSArray *)v79 countByEnumeratingWithState:&v108 objects:v120 count:16];
  if (v80)
  {
    v81 = v80;
    v82 = 0.0;
    v83 = v48;
    v84 = *v109;
    y = CGPointZero.y;
    *&v102 = v83 + 2;
    do
    {
      v86 = 0;
      v87 = *&v102 + 32 * *&v82;
      *&v106 = &v81[*&v82];
      do
      {
        if (*v109 != v84)
        {
          objc_enumerationMutation(v79);
        }

        renderer = [*(*(&v108 + 1) + 8 * v86) renderer];
        layer2 = [renderer layer];

        [v73 addSublayer:layer2];
        [layer2 setAnchorPoint:{CGPointZero.x, y}];
        [layer2 setPosition:{0.0, v78}];
        v130 = *(v87 - 16);
        v87 += 32;
        v78 = v78 + CGRectGetMaxY(v130);

        ++v86;
      }

      while (v81 != v86);
      v81 = [(NSArray *)v79 countByEnumeratingWithState:&v108 objects:v120 count:16];
      v82 = v106;
    }

    while (v81);
  }

  subannotations = selfCopy->_subannotations;
  selfCopy->_subannotations = v79;
  v91 = v79;
}

- (CGSize)_getFrames:(CGRect *)frames ofAnnotations:(id)annotations fixSuperlayer:(id)superlayer scale:(double)scale
{
  annotationsCopy = annotations;
  superlayerCopy = superlayer;
  width = CGSizeZero.width;
  height = CGSizeZero.height;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v13 = [annotationsCopy countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = 0;
    v16 = *v32;
    p_size = &frames->size;
    do
    {
      v17 = 0;
      p_width = &p_size[2 * v15].width;
      v15 += v14;
      do
      {
        if (*v32 != v16)
        {
          objc_enumerationMutation(annotationsCopy);
        }

        v19 = *(*(&v31 + 1) + 8 * v17);
        renderer = [v19 renderer];
        layer = [renderer layer];

        superlayer = [layer superlayer];

        if (superlayer != superlayerCopy)
        {
          [layer removeFromSuperlayer];
          [superlayerCopy addSublayer:layer];
        }

        renderer2 = [v19 renderer];
        [renderer2 sizeLayerToFitAtScale:scale];

        [layer frame];
        *(p_width - 2) = v26;
        *(p_width - 1) = v27;
        *p_width = v24;
        p_width[1] = v25;
        p_width += 4;
        if (v24 > width)
        {
          width = v24;
        }

        height = height + v25;

        v17 = v17 + 1;
      }

      while (v14 != v17);
      v14 = [annotationsCopy countByEnumeratingWithState:&v31 objects:v35 count:16];
    }

    while (v14);
  }

  v28 = width;
  v29 = height;
  result.height = v29;
  result.width = v28;
  return result;
}

- (void)regenerateLayerTree
{
  v8.receiver = self;
  v8.super_class = BKDisplayAnnotationContainedSubnodeRenderer;
  [(BKDisplayAnnotationRenderer *)&v8 regenerateLayerTree];
  annotation = [(BKDisplayAnnotationRenderer *)self annotation];
  namespaceNode = [annotation namespaceNode];
  +[NSMutableArray array];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10006F69C;
  v5 = v6[3] = &unk_1000FC118;
  v7 = v5;
  [namespaceNode enumerateNodesWithOptions:1 usingBlock:v6];
  if ([v5 count])
  {
    [(BKDisplayAnnotationContainedSubnodeRenderer *)self layoutAnnotationStack:v5];
  }
}

- (void)styleSheetDidChange
{
  v20.receiver = self;
  v20.super_class = BKDisplayAnnotationContainedSubnodeRenderer;
  [(BKDisplayAnnotationRenderer *)&v20 styleSheetDidChange];
  annotation = [(BKDisplayAnnotationRenderer *)self annotation];
  styleSheet = [annotation styleSheet];
  backgroundLayer = self->_backgroundLayer;
  v6 = [BKDisplayAnnotationStringContent contentWithString:&stru_1001013E0];
  [styleSheet applyToLayer:backgroundLayer forContent:v6];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = self->_subannotations;
  v8 = [(NSArray *)v7 countByEnumeratingWithState:&v16 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        styleSheet2 = [v12 styleSheet];
        subnodeStyleModifier = [styleSheet subnodeStyleModifier];
        [styleSheet2 setStyleModifier:subnodeStyleModifier];

        renderer = [v12 renderer];
        [renderer styleSheetDidChange];
      }

      v9 = [(NSArray *)v7 countByEnumeratingWithState:&v16 objects:v21 count:16];
    }

    while (v9);
  }
}

@end