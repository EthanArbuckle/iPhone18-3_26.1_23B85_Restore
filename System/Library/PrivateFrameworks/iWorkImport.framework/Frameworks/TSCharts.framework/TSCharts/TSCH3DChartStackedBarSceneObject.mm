@interface TSCH3DChartStackedBarSceneObject
+ (id)partWithEnumerator:(id)a3 layoutSettings:(id *)a4;
- (tvec2<float>)labelObjectSpacePosition:(unsigned int)a3 axisValue:(double)a4 intercept:(double)a5;
@end

@implementation TSCH3DChartStackedBarSceneObject

+ (id)partWithEnumerator:(id)a3 layoutSettings:(id *)a4
{
  v6 = a3;
  v24 = *a4;
  v23.receiver = a1;
  v23.super_class = &OBJC_METACLASS___TSCH3DChartStackedBarSceneObject;
  v7 = objc_msgSendSuper2(&v23, sel_partWithEnumerator_layoutSettings_, v6, &v24);
  v12 = objc_msgSend_properties(v7, v8, v9, v10, v11);

  objc_msgSend_addHorizontalTransformToProperties_(TSCH3DChartBarSceneObject, v13, v14, v15, v16, v12);
  v21 = objc_msgSend_scenePartWithEnumerator_properties_(TSCH3DScenePart, v17, v18, v19, v20, v6, v12);

  return v21;
}

- (tvec2<float>)labelObjectSpacePosition:(unsigned int)a3 axisValue:(double)a4 intercept:(double)a5
{
  v5 = a3;
  if ((a3 & 0x10) != 0)
  {
    v5 = a3 & 0xFFFFFFE7 | 8;
  }

  if ((v5 & 0x20) != 0)
  {
    v6 = v5 & 0xFFFFFFCB | 4;
  }

  else
  {
    v6 = v5;
  }

  v8.receiver = self;
  v8.super_class = TSCH3DChartStackedBarSceneObject;
  return [(TSCH3DChartElementSceneObject *)&v8 labelObjectSpacePosition:v6 axisValue:a4 intercept:a5];
}

@end