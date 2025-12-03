@interface TSCH3DChartStackedBarSceneObject
+ (id)partWithEnumerator:(id)enumerator layoutSettings:(id *)settings;
- (tvec2<float>)labelObjectSpacePosition:(unsigned int)position axisValue:(double)value intercept:(double)intercept;
@end

@implementation TSCH3DChartStackedBarSceneObject

+ (id)partWithEnumerator:(id)enumerator layoutSettings:(id *)settings
{
  enumeratorCopy = enumerator;
  v24 = *settings;
  v23.receiver = self;
  v23.super_class = &OBJC_METACLASS___TSCH3DChartStackedBarSceneObject;
  v7 = objc_msgSendSuper2(&v23, sel_partWithEnumerator_layoutSettings_, enumeratorCopy, &v24);
  v12 = objc_msgSend_properties(v7, v8, v9, v10, v11);

  objc_msgSend_addHorizontalTransformToProperties_(TSCH3DChartBarSceneObject, v13, v14, v15, v16, v12);
  v21 = objc_msgSend_scenePartWithEnumerator_properties_(TSCH3DScenePart, v17, v18, v19, v20, enumeratorCopy, v12);

  return v21;
}

- (tvec2<float>)labelObjectSpacePosition:(unsigned int)position axisValue:(double)value intercept:(double)intercept
{
  positionCopy = position;
  if ((position & 0x10) != 0)
  {
    positionCopy = position & 0xFFFFFFE7 | 8;
  }

  if ((positionCopy & 0x20) != 0)
  {
    v6 = positionCopy & 0xFFFFFFCB | 4;
  }

  else
  {
    v6 = positionCopy;
  }

  v8.receiver = self;
  v8.super_class = TSCH3DChartStackedBarSceneObject;
  return [(TSCH3DChartElementSceneObject *)&v8 labelObjectSpacePosition:v6 axisValue:value intercept:intercept];
}

@end