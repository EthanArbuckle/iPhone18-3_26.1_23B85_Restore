@interface CRTextDetectorModelV3OutputLazy
- (CRTextDetectorModelV3OutputLazy)initWithVisionCoreNamedObjects:(id)objects fromFunctionDescriptor:(id)descriptor;
- (id)link_score_horizontal;
- (id)link_score_vertical;
- (id)orientation_score;
- (id)region_score;
- (id)script_feature;
- (id)table_score;
- (id)text_type_score;
@end

@implementation CRTextDetectorModelV3OutputLazy

- (CRTextDetectorModelV3OutputLazy)initWithVisionCoreNamedObjects:(id)objects fromFunctionDescriptor:(id)descriptor
{
  objectsCopy = objects;
  descriptorCopy = descriptor;
  v12.receiver = self;
  v12.super_class = CRTextDetectorModelV3OutputLazy;
  v9 = [(CRTextDetectorModelV3Output *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_outputObjects, objects);
    objc_storeStrong(&v10->_functionDescriptor, descriptor);
  }

  return v10;
}

- (id)region_score
{
  region_score = self->super._region_score;
  if (!region_score)
  {
    v4 = [CRTextDetectorModelV3Output multiArrayForOutput:@"region_score" inNamedObjects:self->_outputObjects fromFunctionDescriptor:self->_functionDescriptor error:0];
    v5 = self->super._region_score;
    self->super._region_score = v4;

    region_score = self->super._region_score;
  }

  return region_score;
}

- (id)script_feature
{
  script_feature = self->super._script_feature;
  if (!script_feature)
  {
    v4 = [CRTextDetectorModelV3Output multiArrayForOutput:@"script_feature" inNamedObjects:self->_outputObjects fromFunctionDescriptor:self->_functionDescriptor error:0];
    v5 = self->super._script_feature;
    self->super._script_feature = v4;

    script_feature = self->super._script_feature;
  }

  return script_feature;
}

- (id)link_score_horizontal
{
  link_score_horizontal = self->super._link_score_horizontal;
  if (!link_score_horizontal)
  {
    v4 = [CRTextDetectorModelV3Output multiArrayForOutput:@"link_score_horizontal" inNamedObjects:self->_outputObjects fromFunctionDescriptor:self->_functionDescriptor error:0];
    v5 = self->super._link_score_horizontal;
    self->super._link_score_horizontal = v4;

    link_score_horizontal = self->super._link_score_horizontal;
  }

  return link_score_horizontal;
}

- (id)link_score_vertical
{
  link_score_vertical = self->super._link_score_vertical;
  if (!link_score_vertical)
  {
    v4 = [CRTextDetectorModelV3Output multiArrayForOutput:@"link_score_vertical" inNamedObjects:self->_outputObjects fromFunctionDescriptor:self->_functionDescriptor error:0];
    v5 = self->super._link_score_vertical;
    self->super._link_score_vertical = v4;

    link_score_vertical = self->super._link_score_vertical;
  }

  return link_score_vertical;
}

- (id)table_score
{
  table_score = self->super._table_score;
  if (!table_score)
  {
    v4 = [CRTextDetectorModelV3Output multiArrayForOutput:@"table_score" inNamedObjects:self->_outputObjects fromFunctionDescriptor:self->_functionDescriptor error:0];
    v5 = self->super._table_score;
    self->super._table_score = v4;

    table_score = self->super._table_score;
  }

  return table_score;
}

- (id)orientation_score
{
  orientation_score = self->super._orientation_score;
  if (!orientation_score)
  {
    v4 = [CRTextDetectorModelV3Output multiArrayForOutput:@"orientation_score" inNamedObjects:self->_outputObjects fromFunctionDescriptor:self->_functionDescriptor error:0];
    v5 = self->super._orientation_score;
    self->super._orientation_score = v4;

    orientation_score = self->super._orientation_score;
  }

  return orientation_score;
}

- (id)text_type_score
{
  text_type_score = self->super._text_type_score;
  if (!text_type_score)
  {
    v4 = [CRTextDetectorModelV3Output multiArrayForOutput:@"text_type_score" inNamedObjects:self->_outputObjects fromFunctionDescriptor:self->_functionDescriptor error:0];
    v5 = self->super._text_type_score;
    self->super._text_type_score = v4;

    text_type_score = self->super._text_type_score;
  }

  return text_type_score;
}

@end