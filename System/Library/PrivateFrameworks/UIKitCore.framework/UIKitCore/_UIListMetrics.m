@interface _UIListMetrics
+ (_UIListMetrics)sharedMetrics;
- (_UIListMetrics)init;
- (_UIListMetricsAccessoryMetrics)metricsForAccessoryWithType:(int64_t)a3 cellStyle:(int64_t)a4 listStyle:(int64_t)a5 traitCollection:(id)a6 state:(id)a7;
- (_UIListMetricsCellMetrics)metricsForCellWithStyle:(SEL)a3 listStyle:(int64_t)a4 prominence:(int64_t)a5 traitCollection:(int64_t)a6 state:(id)a7;
- (_UIListMetricsListBehaviors)behaviorsForListWithStyle:(int64_t)a3 traitCollection:(id)a4;
- (_UIListMetricsSectionMetrics)metricsForSectionWithPosition:(SEL)a3 hasHeader:(unint64_t)a4 hasFooter:(BOOL)a5 listGeometry:(BOOL)a6 listStyle:(_UIListGeometry *)a7 spacingStyle:(int64_t)a8 traitCollection:(int64_t)a9;
- (_UIListMetricsSeparatorMetrics)metricsForSeparatorWithListStyle:(SEL)a3 traitCollection:(int64_t)a4;
- (_UIListMetricsShadowMetrics)metricsForShadowWithType:(SEL)a3 listStyle:(int64_t)a4 traitCollection:(int64_t)a5;
@end

@implementation _UIListMetrics

- (_UIListMetrics)init
{
  v3.receiver = self;
  v3.super_class = _UIListMetrics;
  return [(_UIListMetrics *)&v3 init];
}

- (_UIListMetricsListBehaviors)behaviorsForListWithStyle:(int64_t)a3 traitCollection:(id)a4
{
  v5 = qword_1ED48CAA0;
  v6 = a4;
  if (v5 != -1)
  {
    swift_once();
  }

  v7 = sub_188C2678C(a3, v6);
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.var1 = v11;
  result.var0 = v10;
  return result;
}

- (_UIListMetricsSeparatorMetrics)metricsForSeparatorWithListStyle:(SEL)a3 traitCollection:(int64_t)a4
{
  v7 = qword_1ED48CAA0;
  v8 = a5;
  if (v7 != -1)
  {
    swift_once();
  }

  v9 = sub_188C26F60(a4, v8);
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

- (_UIListMetricsSectionMetrics)metricsForSectionWithPosition:(SEL)a3 hasHeader:(unint64_t)a4 hasFooter:(BOOL)a5 listGeometry:(BOOL)a6 listStyle:(_UIListGeometry *)a7 spacingStyle:(int64_t)a8 traitCollection:(int64_t)a9
{
  v14 = a4;
  v17 = *&a7->contentMargins.bottom;
  v45[0] = *&a7->contentMargins.top;
  v18 = *&a7->layoutMargins.top;
  v19 = *&a7->layoutMargins.bottom;
  v45[1] = v17;
  v45[2] = v18;
  v20 = *&a7->safeAreaInsets.top;
  v21 = *&a7->safeAreaInsets.bottom;
  v45[3] = v19;
  v45[4] = v20;
  v22 = *&a7->scrollAccessoryInsets.top;
  v23 = *&a7->scrollAccessoryInsets.bottom;
  v45[5] = v21;
  v45[6] = v22;
  size = a7->size;
  v45[7] = v23;
  v45[8] = size;
  v25 = a10;
  v26 = self;
  sub_188C29CAC(v14, a5, a6, v45, a8, a9, v25, v37);
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

- (_UIListMetricsCellMetrics)metricsForCellWithStyle:(SEL)a3 listStyle:(int64_t)a4 prominence:(int64_t)a5 traitCollection:(int64_t)a6 state:(id)a7
{
  v13 = a7;
  swift_unknownObjectRetain();
  v14 = self;
  sub_188FE1D14(a4, a5, a6, v13, &v26);
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

- (_UIListMetricsAccessoryMetrics)metricsForAccessoryWithType:(int64_t)a3 cellStyle:(int64_t)a4 listStyle:(int64_t)a5 traitCollection:(id)a6 state:(id)a7
{
  v11 = a6;
  swift_unknownObjectRetain();
  v12 = self;
  v13 = sub_188FE20E4(a3, a4, a5, v11);
  v15 = v14;

  swift_unknownObjectRelease();
  v16 = v13;
  v17 = v15;
  result.var1 = v17;
  result.var0 = v16;
  return result;
}

- (_UIListMetricsShadowMetrics)metricsForShadowWithType:(SEL)a3 listStyle:(int64_t)a4 traitCollection:(int64_t)a5
{
  v8 = qword_1ED48CAA0;
  v9 = a6;
  if (v8 != -1)
  {
    swift_once();
  }

  sub_188FE1758(a4, a5, v9);

  return result;
}

@end