@interface PXCuratedLibraryLayoutSnapshotGeometryDescriptor
- (CGPoint)offset;
- (CGRect)visibleRect;
- (NSIndexSet)sections;
- (PXCuratedLibraryLayoutSnapshotGeometryDescriptor)init;
- (PXCuratedLibraryLayoutSnapshotGeometryDescriptor)initWithLayout:(id)layout;
- (id)description;
- (id)geometryDescriptorForSectionAtIndexPath:(PXSimpleIndexPath *)path;
- (void)compactifySectionsBeyondVisibleRectWithAnchorSection:(int64_t)section;
- (void)extrapolateSectionsBetween:(int64_t)between and:(int64_t)and withAnchorSection:(int64_t)section;
@end

@implementation PXCuratedLibraryLayoutSnapshotGeometryDescriptor

- (CGPoint)offset
{
  x = self->_offset.x;
  y = self->_offset.y;
  result.y = y;
  result.x = x;
  return result;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AD60]);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 initWithFormat:@"<%@: %p\n", v5, self];

  [v6 appendFormat:@"\tdataSourceIdentifier=%li\n", -[PXCuratedLibraryLayoutSnapshotGeometryDescriptor dataSourceIdentifier](self, "dataSourceIdentifier")];
  [(PXCuratedLibraryLayoutSnapshotGeometryDescriptor *)self offset];
  v7 = NSStringFromCGPoint(v19);
  [v6 appendFormat:@"\toffset=%@\n", v7];

  sections = [(PXCuratedLibraryLayoutSnapshotGeometryDescriptor *)self sections];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __63__PXCuratedLibraryLayoutSnapshotGeometryDescriptor_description__block_invoke;
  v17[3] = &unk_1E774A7B8;
  v17[4] = self;
  v9 = v6;
  v18 = v9;
  [sections enumerateIndexesUsingBlock:v17];

  sectionGeometryDescriptorsByIndexPath = self->_sectionGeometryDescriptorsByIndexPath;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __63__PXCuratedLibraryLayoutSnapshotGeometryDescriptor_description__block_invoke_2;
  v15[3] = &unk_1E7741580;
  v11 = v9;
  v16 = v11;
  [(NSDictionary *)sectionGeometryDescriptorsByIndexPath enumerateKeysAndObjectsUsingBlock:v15];
  [v11 appendString:@">"];
  v12 = v16;
  v13 = v11;

  return v11;
}

void __63__PXCuratedLibraryLayoutSnapshotGeometryDescriptor_description__block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v5 = v4[1];
  v6 = MEMORY[0x1E696B098];
  v12[0] = [v4 dataSourceIdentifier];
  v12[1] = a2;
  v7.f64[0] = NAN;
  v7.f64[1] = NAN;
  v13 = vnegq_f64(v7);
  v8 = [v6 px_valueWithSimpleIndexPath:v12];
  v9 = [v5 objectForKeyedSubscript:v8];

  v10 = *(a1 + 40);
  [v9 sectionRect];
  v11 = NSStringFromCGRect(v14);
  [v10 appendFormat:@"\t%lu: %@\n", a2, v11];
}

void __63__PXCuratedLibraryLayoutSnapshotGeometryDescriptor_description__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  if (a2)
  {
    [a2 px_simpleIndexPathValue];
  }

  PXSimpleIndexPathDescription();
}

- (void)compactifySectionsBeyondVisibleRectWithAnchorSection:(int64_t)section
{
  sections = [(PXCuratedLibraryLayoutSnapshotGeometryDescriptor *)self sections];
  if (-[PXCuratedLibraryLayoutSnapshotGeometryDescriptor zoomLevel](self, "zoomLevel") == 3 && [sections containsIndex:section])
  {
    x = self->_visibleRect.origin.x;
    y = self->_visibleRect.origin.y;
    width = self->_visibleRect.size.width;
    height = self->_visibleRect.size.height;
    dataSourceIdentifier = [(PXCuratedLibraryLayoutSnapshotGeometryDescriptor *)self dataSourceIdentifier];
    selfCopy = self;
    v11 = [(NSDictionary *)self->_sectionGeometryDescriptorsByIndexPath mutableCopy];
    v12 = +[PXCuratedLibrarySettings sharedInstance];
    [v12 interitemSpacingForDays];
    v115 = v13;

    v134 = *MEMORY[0x1E695EFF8];
    v135 = *(MEMORY[0x1E695EFF8] + 8);
    v111 = y;
    v112 = x;
    v145.origin.x = x;
    v145.origin.y = y;
    v109 = height;
    v110 = width;
    v145.size.width = width;
    v145.size.height = height;
    MinY = CGRectGetMinY(v145);
    v114 = sections;
    firstIndex = [sections firstIndex];
    if (firstIndex <= section)
    {
      v16 = firstIndex;
      v17 = 0;
      v116 = MinY - v115;
      v117 = -1.79769313e308;
      v18.f64[0] = NAN;
      v18.f64[1] = NAN;
      v118 = vnegq_f64(v18);
      v19 = v135;
      sectionCopy = section;
      v120 = MinY;
      do
      {
        v142 = dataSourceIdentifier;
        sectionCopy2 = sectionCopy;
        v144 = v118;
        v21 = [MEMORY[0x1E696B098] px_valueWithSimpleIndexPath:&v142];
        v22 = [v11 objectForKeyedSubscript:v21];
        v23 = [v22 sectionGeometryDescriptorOffsetBy:{v134, v19}];

        [v23 sectionRect];
        v25 = v24;
        v27 = v26;
        v29 = v28;
        v31 = v30;
        [v23 keyAssetRect];
        v138 = v32;
        v140 = v33;
        v35 = v34;
        v37 = v36;
        [v23 headerRect];
        v130 = v38;
        v136 = v39;
        v126 = v41;
        v128 = v40;
        v146.origin.x = v25;
        v146.origin.y = v27;
        v146.size.width = v29;
        v146.size.height = v31;
        v122 = v29;
        if (CGRectGetMaxY(v146) >= MinY)
        {
          v151.origin.x = v138;
          v151.origin.y = v140;
          v151.size.width = v35;
          v151.size.height = v37;
          if (CGRectGetMaxY(v151) >= MinY)
          {
            v132 = v19;
            v45 = v25;
            v124 = v31;
          }

          else
          {
            v152.origin.x = v138;
            v152.origin.y = v140;
            v152.size.width = v35;
            v152.size.height = v37;
            v47 = v116 - CGRectGetMaxY(v152);
            v132 = v19 + v47;
            v27 = v27 + v47;
            v124 = v31 - v47;
            v138 = v25;
            v140 = v140 + v47;
            v35 = v29;
            v45 = v25;
          }

          v46 = v37;
        }

        else
        {
          v147.origin.x = v138;
          v147.origin.y = v140;
          v147.size.width = v35;
          v147.size.height = v37;
          v42 = CGRectGetHeight(v147);
          v148.origin.x = v25;
          v148.origin.y = v27;
          v148.size.width = v29;
          v148.size.height = v31;
          MaxY = CGRectGetMaxY(v148);
          if (MaxY < v117)
          {
            MaxY = v117;
          }

          v44 = MaxY - v42;
          v149.origin.x = v25;
          v149.origin.y = v27;
          v149.size.width = v29;
          v149.size.height = v31;
          ++v17;
          v132 = v19 + v44 - CGRectGetMinY(v149);
          v136 = v44;
          if (v17 == 3)
          {
            v150.origin.x = v25;
            v150.origin.y = v44;
            v150.size.width = v29;
            v150.size.height = v42;
            v117 = CGRectGetMaxY(v150);
          }

          v138 = v25;
          v140 = v44;
          v35 = v29;
          v124 = v42;
          v27 = v44;
          v45 = v25;
          v46 = v42;
        }

        v48 = [PXCuratedLibrarySectionGeometryDescriptor alloc];
        [v23 headerCornerRadius];
        v50 = v49;
        v52 = v51;
        v54 = v53;
        v56 = v55;
        headerAsset = [v23 headerAsset];
        v58 = -[PXCuratedLibrarySectionGeometryDescriptor initWithSectionRect:headerRect:keyAssetRect:headerCornerRadius:headerAsset:visualPosition:](v48, "initWithSectionRect:headerRect:keyAssetRect:headerCornerRadius:headerAsset:visualPosition:", headerAsset, [v23 visualPosition], v45, v27, v122, v124, v130, v136, v128, v126, *&v138, *&v140, *&v35, *&v46, __PAIR64__(v52, v50), __PAIR64__(v56, v54));
        [v11 setObject:v58 forKeyedSubscript:v21];

        v59 = sectionCopy-- <= v16;
        MinY = v120;
        v19 = v132;
      }

      while (!v59);
    }

    v153.origin.y = v111;
    v153.origin.x = v112;
    v153.size.height = v109;
    v153.size.width = v110;
    v123 = CGRectGetMaxY(v153);
    sections = v114;
    lastIndex = [v114 lastIndex];
    if (lastIndex >= section)
    {
      v61 = 0;
      v62 = lastIndex + 1;
      v119 = 1.79769313e308;
      v63.f64[0] = NAN;
      v63.f64[1] = NAN;
      v121 = vnegq_f64(v63);
      do
      {
        v142 = dataSourceIdentifier;
        sectionCopy2 = section;
        v144 = v121;
        v64 = [MEMORY[0x1E696B098] px_valueWithSimpleIndexPath:&v142];
        v65 = [v11 objectForKeyedSubscript:v64];
        v66 = [v65 sectionGeometryDescriptorOffsetBy:{v134, v135}];

        [v66 sectionRect];
        v68 = v67;
        v70 = v69;
        v72 = v71;
        v74 = v73;
        [v66 keyAssetRect];
        v76 = v75;
        v78 = v77;
        v80 = v79;
        v82 = v81;
        [v66 headerRect];
        v137 = v83;
        v131 = v85;
        v133 = v84;
        v129 = v86;
        v154.origin.x = v68;
        v154.origin.y = v70;
        v154.size.width = v72;
        v154.size.height = v74;
        if (CGRectGetMinY(v154) <= v123)
        {
          v160.origin.x = v68;
          v92 = v82;
          v139 = v72;
          v141 = v160.origin.x;
          v160.origin.y = v70;
          v160.size.width = v72;
          v160.size.height = v74;
          v125 = v70;
          if (CGRectGetMaxY(v160) <= v123)
          {
            v127 = v74;
            v90 = v78;
            v72 = v80;
            goto LABEL_34;
          }

          v127 = v74;
          v161.origin.x = v76;
          v161.origin.y = v78;
          v72 = v80;
          v161.size.width = v80;
          v87 = v82;
          v161.size.height = v82;
          if (CGRectGetMinY(v161) < v123)
          {
            v162.origin.x = v76;
            v162.origin.y = v78;
            v162.size.width = v72;
            v162.size.height = v82;
            v93 = v115 + CGRectGetMaxY(v162);
            v94 = v123;
            if (v123 < v93)
            {
              v94 = v93;
            }

            v163.size.width = v139;
            v163.origin.x = v141;
            v163.origin.y = v70;
            v163.size.height = v127;
            v95 = v94 - CGRectGetMaxY(v163);
            v135 = v135 + v95;
            v127 = v127 + v95;
          }

          v90 = v78;
        }

        else
        {
          v155.origin.x = v76;
          v155.origin.y = v78;
          v155.size.width = v80;
          v155.size.height = v82;
          v87 = CGRectGetHeight(v155);
          v156.origin.x = v68;
          v156.origin.y = v70;
          v156.size.width = v72;
          v156.size.height = v74;
          v88 = v135 + v87 - CGRectGetHeight(v156);
          v157.origin.x = v68;
          v157.origin.y = v70;
          v157.size.width = v72;
          v157.size.height = v74;
          v89 = CGRectGetMinY(v157);
          if (v89 >= v119)
          {
            v90 = v119;
          }

          else
          {
            v90 = v89;
          }

          v158.origin.x = v68;
          v158.origin.y = v70;
          v158.size.width = v72;
          v158.size.height = v74;
          v91 = v88 + v90 - CGRectGetMinY(v158);
          ++v61;
          v76 = v68;
          v135 = v91;
          v127 = v87;
          if (v61 == 3)
          {
            v159.origin.x = v68;
            v159.origin.y = v90;
            v159.size.width = v72;
            v159.size.height = v87;
            v119 = CGRectGetMinY(v159);
          }

          v141 = v68;
          v125 = v90;
          v139 = v72;
        }

        v92 = v87;
LABEL_34:
        v96 = [PXCuratedLibrarySectionGeometryDescriptor alloc];
        [v66 headerCornerRadius];
        v98 = v97;
        v100 = v99;
        v102 = v101;
        v104 = v103;
        headerAsset2 = [v66 headerAsset];
        v106 = -[PXCuratedLibrarySectionGeometryDescriptor initWithSectionRect:headerRect:keyAssetRect:headerCornerRadius:headerAsset:visualPosition:](v96, "initWithSectionRect:headerRect:keyAssetRect:headerCornerRadius:headerAsset:visualPosition:", headerAsset2, [v66 visualPosition], v141, v125, v139, v127, v137, v133, v131, v129, *&v76, *&v90, *&v72, *&v92, __PAIR64__(v100, v98), __PAIR64__(v104, v102));
        [v11 setObject:v106 forKeyedSubscript:v64];

        ++section;
      }

      while (v62 != section);
    }

    v107 = [v11 copy];
    sectionGeometryDescriptorsByIndexPath = selfCopy->_sectionGeometryDescriptorsByIndexPath;
    selfCopy->_sectionGeometryDescriptorsByIndexPath = v107;
  }
}

- (void)extrapolateSectionsBetween:(int64_t)between and:(int64_t)and withAnchorSection:(int64_t)section
{
  v31 = *MEMORY[0x1E69E9840];
  sections = [(PXCuratedLibraryLayoutSnapshotGeometryDescriptor *)self sections];
  if ([sections count])
  {
    v8 = [(NSDictionary *)self->_sectionGeometryDescriptorsByIndexPath mutableCopy];
    dataSourceIdentifier = [(PXCuratedLibraryLayoutSnapshotGeometryDescriptor *)self dataSourceIdentifier];
    firstIndex = [sections firstIndex];
    if (firstIndex >= section)
    {
      v12 = 0;
    }

    else
    {
      v11 = firstIndex;
      v12 = 0;
      v13.f64[0] = NAN;
      v13.f64[1] = NAN;
      v27 = vnegq_f64(v13);
      do
      {
        v14 = [sections containsIndex:v11];
        *&buf = dataSourceIdentifier;
        *(&buf + 1) = v11;
        v30 = v27;
        if (v14)
        {
          v15 = [MEMORY[0x1E696B098] px_valueWithSimpleIndexPath:&buf];
          v16 = [v8 objectForKeyedSubscript:v15];

          v12 = v16;
        }

        else
        {
          v15 = [MEMORY[0x1E696B098] px_valueWithSimpleIndexPath:&buf];
          [v8 setObject:v12 forKeyedSubscript:v15];
        }

        ++v11;
      }

      while (section != v11);
    }

    lastIndex = [sections lastIndex];
    if (lastIndex > section)
    {
      v19 = lastIndex;
      v20.f64[0] = NAN;
      v20.f64[1] = NAN;
      v28 = vnegq_f64(v20);
      do
      {
        v21 = [sections containsIndex:v19];
        *&buf = dataSourceIdentifier;
        *(&buf + 1) = v19;
        v30 = v28;
        if (v21)
        {
          v22 = [MEMORY[0x1E696B098] px_valueWithSimpleIndexPath:&buf];
          v23 = [v8 objectForKeyedSubscript:v22];

          v12 = v23;
        }

        else
        {
          v22 = [MEMORY[0x1E696B098] px_valueWithSimpleIndexPath:&buf];
          [v8 setObject:v12 forKeyedSubscript:v22];
        }

        --v19;
      }

      while (v19 > section);
    }

    firstIndex2 = [sections firstIndex];
    *&buf = dataSourceIdentifier;
    *(&buf + 1) = firstIndex2;
    v25.f64[0] = NAN;
    v25.f64[1] = NAN;
    v30 = vnegq_f64(v25);
    [MEMORY[0x1E696B098] px_valueWithSimpleIndexPath:&buf];
    v26 = [v8 objectForKeyedSubscript:objc_claimAutoreleasedReturnValue()];
    __101__PXCuratedLibraryLayoutSnapshotGeometryDescriptor_extrapolateSectionsBetween_and_withAnchorSection___block_invoke(v26);
  }

  v17 = PLCuratedLibraryGetLog();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = self;
    _os_log_impl(&dword_1A3C1C000, v17, OS_LOG_TYPE_DEFAULT, "cannot extrapolate sections in %@", &buf, 0xCu);
  }
}

- (NSIndexSet)sections
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E696AD50]);
  dataSourceIdentifier = [(PXCuratedLibraryLayoutSnapshotGeometryDescriptor *)self dataSourceIdentifier];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  keyEnumerator = [(NSDictionary *)self->_sectionGeometryDescriptorsByIndexPath keyEnumerator];
  v6 = [keyEnumerator countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(keyEnumerator);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        if (v10)
        {
          [v10 px_simpleIndexPathValue];
        }

        if (!dataSourceIdentifier)
        {
          [v3 addIndex:0];
        }
      }

      v7 = [keyEnumerator countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v11 = [v3 copy];

  return v11;
}

- (id)geometryDescriptorForSectionAtIndexPath:(PXSimpleIndexPath *)path
{
  sectionGeometryDescriptorsByIndexPath = self->_sectionGeometryDescriptorsByIndexPath;
  v5 = *&path->item;
  v10[0] = *&path->dataSourceIdentifier;
  v10[1] = v5;
  v6 = [MEMORY[0x1E696B098] px_valueWithSimpleIndexPath:v10];
  v7 = [(NSDictionary *)sectionGeometryDescriptorsByIndexPath objectForKeyedSubscript:v6];

  [(PXCuratedLibraryLayoutSnapshotGeometryDescriptor *)self offset];
  v8 = [v7 sectionGeometryDescriptorOffsetBy:?];

  return v8;
}

- (CGRect)visibleRect
{
  [(PXCuratedLibraryLayoutSnapshotGeometryDescriptor *)self offset];
  v4 = v3;
  v6 = v5;
  x = self->_visibleRect.origin.x;
  y = self->_visibleRect.origin.y;
  width = self->_visibleRect.size.width;
  height = self->_visibleRect.size.height;

  return CGRectOffset(*&x, v4, v6);
}

- (PXCuratedLibraryLayoutSnapshotGeometryDescriptor)initWithLayout:(id)layout
{
  layoutCopy = layout;
  v35.receiver = self;
  v35.super_class = PXCuratedLibraryLayoutSnapshotGeometryDescriptor;
  v5 = [(PXCuratedLibraryLayoutSnapshotGeometryDescriptor *)&v35 init];
  if (v5)
  {
    libraryBodyLayout = [layoutCopy libraryBodyLayout];
    presentedDataSource = [libraryBodyLayout presentedDataSource];
    v5->_dataSourceIdentifier = [presentedDataSource identifier];

    v5->_zoomLevel = [layoutCopy presentedZoomLevel];
    [layoutCopy presentedVisibleRect];
    v5->_visibleRect.origin.x = v8;
    v5->_visibleRect.origin.y = v9;
    v5->_visibleRect.size.width = v10;
    v5->_visibleRect.size.height = v11;
    v5->_offset = *MEMORY[0x1E695EFF8];
    v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
    if (libraryBodyLayout)
    {
      [libraryBodyLayout orientedContentTransform];
    }

    else
    {
      v34 = 0;
      v32 = 0u;
      v33 = 0u;
      v31 = 0u;
    }

    v28 = v31;
    v29 = v32;
    v30 = v33;
    v20 = MEMORY[0x1E69E9820];
    v21 = 3221225472;
    v22 = __67__PXCuratedLibraryLayoutSnapshotGeometryDescriptor_initWithLayout___block_invoke;
    v23 = &unk_1E7741558;
    v24 = layoutCopy;
    v13 = v5;
    v25 = v13;
    v26 = libraryBodyLayout;
    v27 = v12;
    v14 = v12;
    v15 = libraryBodyLayout;
    [v15 enumerateAssetsSectionSublayoutsUsingBlock:&v20];
    v16 = [v14 copy];
    sectionGeometryDescriptorsByIndexPath = v13->_sectionGeometryDescriptorsByIndexPath;
    v13->_sectionGeometryDescriptorsByIndexPath = v16;

    [v15 defaultInterlayoutSpacing];
    v13->_intersectionSpacing = v18;
  }

  return v5;
}

void __67__PXCuratedLibraryLayoutSnapshotGeometryDescriptor_initWithLayout___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v54 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [v5 bodyContentLayout];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [v6 presentedGeometryDescriptor];
    v8 = [PXCuratedLibrarySectionGeometryDescriptor alloc];
    [v7 sectionRect];
    [v5 padding];
    PXEdgeInsetsInsetRect();
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [v6 presentedGeometryDescriptor];
  }

  else
  {
    v9 = 0;
  }

  v10 = [v5 headerLayout];
  v11 = v10;
  if (v6 && v10)
  {
    v12 = *MEMORY[0x1E695EFF8];
    v13 = *(MEMORY[0x1E695EFF8] + 8);
    [v10 contentSize];
    [v6 convertRect:v11 fromLayout:{v12, v13, v14, v15}];
    v17 = v16;
    v19 = v18;
    [(PXCuratedLibrarySectionGeometryDescriptor *)v9 sectionRect];
    v21 = v20;
    v23 = v22;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v11 alpha];
      if (v24 <= 0.0)
      {
        [(PXCuratedLibrarySectionGeometryDescriptor *)v9 sectionRect];
        MaxY = CGRectGetMaxY(v55);
        v56.origin.x = v21;
        v56.origin.y = v17;
        v56.size.width = v23;
        v56.size.height = v19;
        v26 = MaxY - CGRectGetHeight(v56);
        if (v17 >= v26)
        {
          v17 = v26;
        }
      }
    }

    v27 = [(PXCuratedLibrarySectionGeometryDescriptor *)v9 sectionGeometryDescriptorWithHeaderRect:v21, v17, v23, v19];

    v9 = v27;
  }

  if (v9)
  {
    v28 = *off_1E7722228;
    v29 = *(off_1E7722228 + 1);
    v30 = *(off_1E7722228 + 2);
    v31 = *(off_1E7722228 + 3);
    [*(a1 + 32) convertRect:v5 fromLayout:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    if (!CGRectIsNull(v57))
    {
      PXPointIsNull();
    }
  }

  else
  {
    v32 = *MEMORY[0x1E695EFF8];
    v33 = *(MEMORY[0x1E695EFF8] + 8);
    [v5 contentSize];
    [*(a1 + 48) convertRect:v5 fromDescendantLayout:{v32, v33, v34, v35}];
    v37 = v36;
    v39 = v38;
    v41 = v40;
    v43 = v42;
    v44 = [PXCuratedLibrarySectionGeometryDescriptor alloc];
    HIDWORD(v50) = *(off_1E7721FF0 + 3);
    *(&v50 + 4) = *(off_1E7721FF0 + 4);
    LODWORD(v50) = *off_1E7721FF0;
    v9 = [(PXCuratedLibrarySectionGeometryDescriptor *)v44 initWithSectionRect:0 headerRect:a2 keyAssetRect:v37 headerCornerRadius:v39 headerAsset:v41 visualPosition:v43, *MEMORY[0x1E695F050], *(MEMORY[0x1E695F050] + 8), *(MEMORY[0x1E695F050] + 16), *(MEMORY[0x1E695F050] + 24), v50];
    v45 = [*(a1 + 48) presentedDataSource];
    v28 = [v45 identifier];

    if (!v9)
    {
      goto LABEL_20;
    }

    v30 = 0x7FFFFFFFFFFFFFFFLL;
    v29 = a2;
    v31 = 0x7FFFFFFFFFFFFFFFLL;
  }

  if (v28 != *off_1E7721F68)
  {
    v46 = *(a1 + 80);
    *buf = *(a1 + 64);
    v52 = v46;
    v53 = *(a1 + 96);
    v47 = [(PXCuratedLibrarySectionGeometryDescriptor *)v9 sectionGeometryDescriptorTransformedBy:buf];

    v48 = *(a1 + 56);
    *buf = v28;
    *&buf[8] = v29;
    *&v52 = v30;
    *(&v52 + 1) = v31;
    v49 = [MEMORY[0x1E696B098] px_valueWithSimpleIndexPath:buf];
    [v48 setObject:v47 forKeyedSubscript:v49];

    v9 = v47;
  }

LABEL_20:
}

- (PXCuratedLibraryLayoutSnapshotGeometryDescriptor)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXCuratedLibraryLayoutSnapshotGeometryDescriptor.m" lineNumber:33 description:{@"%s is not available as initializer", "-[PXCuratedLibraryLayoutSnapshotGeometryDescriptor init]"}];

  abort();
}

@end