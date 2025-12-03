@interface _UIListMetrics
+ (_UIListMetrics)sharedMetrics;
- (_UIListMetrics)init;
- (_UIListMetricsAccessoryMetrics)metricsForAccessoryWithType:(int64_t)type cellStyle:(int64_t)style listStyle:(int64_t)listStyle traitCollection:(id)collection state:(id)state;
- (_UIListMetricsCellMetrics)metricsForCellWithStyle:(SEL)style listStyle:(int64_t)listStyle prominence:(int64_t)prominence traitCollection:(int64_t)collection state:(id)state;
- (_UIListMetricsListBehaviors)behaviorsForListWithStyle:(int64_t)style traitCollection:(id)collection;
- (_UIListMetricsSectionMetrics)metricsForSectionWithPosition:(SEL)position hasHeader:(unint64_t)header hasFooter:(BOOL)footer listGeometry:(BOOL)geometry listStyle:(_UIListGeometry *)style spacingStyle:(int64_t)spacingStyle traitCollection:(int64_t)collection;
- (_UIListMetricsSeparatorMetrics)metricsForSeparatorWithListStyle:(SEL)style traitCollection:(int64_t)collection;
- (_UIListMetricsShadowMetrics)metricsForShadowWithType:(SEL)type listStyle:(int64_t)style traitCollection:(int64_t)collection;
@end

@implementation _UIListMetrics

- (_UIListMetrics)init
{
  v3.receiver = self;
  v3.super_class = _UIListMetrics;
  return [(_UIListMetrics *)&v3 init];
}

- (_UIListMetricsListBehaviors)behaviorsForListWithStyle:(int64_t)style traitCollection:(id)collection
{
  v5 = qword_1ED48CAA0;
  collectionCopy = collection;
  if (v5 != -1)
  {
    swift_once();
  }

  v7 = sub_188C2678C(style, collectionCopy);
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.var1 = v11;
  result.var0 = v10;
  return result;
}

- (_UIListMetricsSeparatorMetrics)metricsForSeparatorWithListStyle:(SEL)style traitCollection:(int64_t)collection
{
  v7 = qword_1ED48CAA0;
  v8 = a5;
  if (v7 != -1)
  {
    swift_once();
  }

  v9 = sub_188C26F60(collection, v8);
  v11 = v10;
  v13 = v12;
  v15 = v14;

  retstr->var0 = v9;
  retstr->var1 = v11;
  retstr->var2 = v13;
  retstr->var3 = v15;
  return result;
}

+ (_UIListMetrics)sharedMetrics
{
  if (qword_1ED48CC38 != -1)
  {
    swift_once();
  }

  v3 = qword_1ED48CC40;

  return v3;
}

- (_UIListMetricsSectionMetrics)metricsForSectionWithPosition:(SEL)position hasHeader:(unint64_t)header hasFooter:(BOOL)footer listGeometry:(BOOL)geometry listStyle:(_UIListGeometry *)style spacingStyle:(int64_t)spacingStyle traitCollection:(int64_t)collection
{
  headerCopy = header;
  v17 = *&style->contentMargins.bottom;
  v45[0] = *&style->contentMargins.top;
  v18 = *&style->layoutMargins.top;
  v19 = *&style->layoutMargins.bottom;
  v45[1] = v17;
  v45[2] = v18;
  v20 = *&style->safeAreaInsets.top;
  v21 = *&style->safeAreaInsets.bottom;
  v45[3] = v19;
  v45[4] = v20;
  v22 = *&style->scrollAccessoryInsets.top;
  v23 = *&style->scrollAccessoryInsets.bottom;
  v45[5] = v21;
  v45[6] = v22;
  size = style->size;
  v45[7] = v23;
  v45[8] = size;
  v25 = a10;
  selfCopy = self;
  sub_188C29CAC(headerCopy, footer, geometry, v45, spacingStyle, collection, v25, v37);
  v27 = v37[0];
  v28 = v37[1];
  v29 = v44;

  v31 = v38;
  v32 = v39;
  v33 = v40;
  v34 = v41;
  v35 = v42;
  v36 = v43;
  retstr->var0 = v27;
  retstr->var1 = v28;
  *&retstr->var2.top = v31;
  *&retstr->var2.bottom = v32;
  *&retstr->var3 = v33;
  *&retstr->var4.leading = v34;
  *&retstr->var4.trailing = v35;
  *&retstr->var5.leading = v36;
  retstr->var5.trailing = v29;
  return result;
}

- (_UIListMetricsCellMetrics)metricsForCellWithStyle:(SEL)style listStyle:(int64_t)listStyle prominence:(int64_t)prominence traitCollection:(int64_t)collection state:(id)state
{
  stateCopy = state;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_188FE1D14(listStyle, prominence, collection, stateCopy, &v26);
  v25 = v26;
  v15 = v27;
  v16 = v30;
  v17 = v31;
  v18 = v32;
  v19 = v35;

  swift_unknownObjectRelease();
  v21 = v28;
  v22 = v29;
  v23 = v33;
  v24 = v34;
  *&retstr->var0.var0 = v25;
  retstr->var0.var2 = v15;
  *&retstr->var0.var4.leading = v22;
  *&retstr->var0.var3 = v21;
  retstr->var0.var4.trailing = v16;
  retstr->var0.var5 = v17;
  retstr->var1.var0 = v18;
  *&retstr->var2.var0 = v23;
  *&retstr->var3.var1 = v24;
  retstr->var4.var1 = v19;
  return result;
}

- (_UIListMetricsAccessoryMetrics)metricsForAccessoryWithType:(int64_t)type cellStyle:(int64_t)style listStyle:(int64_t)listStyle traitCollection:(id)collection state:(id)state
{
  collectionCopy = collection;
  swift_unknownObjectRetain();
  selfCopy = self;
  v13 = sub_188FE20E4(type, style, listStyle, collectionCopy);
  v15 = v14;

  swift_unknownObjectRelease();
  v16 = v13;
  v17 = v15;
  result.var1 = v17;
  result.var0 = v16;
  return result;
}

- (_UIListMetricsShadowMetrics)metricsForShadowWithType:(SEL)type listStyle:(int64_t)style traitCollection:(int64_t)collection
{
  v8 = qword_1ED48CAA0;
  v9 = a6;
  if (v8 != -1)
  {
    swift_once();
  }

  sub_188FE1758(style, collection, v9);

  return result;
}

@end