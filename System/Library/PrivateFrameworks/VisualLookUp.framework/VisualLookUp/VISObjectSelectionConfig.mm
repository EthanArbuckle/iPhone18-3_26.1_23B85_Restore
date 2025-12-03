@interface VISObjectSelectionConfig
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (VISObjectSelectionConfig)initWithDictionary:(id)dictionary;
- (VISObjectSelectionConfig)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation VISObjectSelectionConfig

- (void)writeTo:(id)to
{
  toCopy = to;
  [(VISObjectSelectionConfig *)self unknown_label_threshold];
  if (v4 != 0.0)
  {
    PBDataWriterWriteFloatField();
  }

  if ([(VISObjectSelectionConfig *)self enable_text_state_selection])
  {
    PBDataWriterWriteBOOLField();
  }

  if ([(VISObjectSelectionConfig *)self max_number_of_text_entities])
  {
    PBDataWriterWriteInt32Field();
  }

  [(VISObjectSelectionConfig *)self text_book_world_distance_threshold];
  if (v5 != 0.0)
  {
    PBDataWriterWriteFloatField();
  }

  [(VISObjectSelectionConfig *)self bounding_box_padding_for_cropping];
  if (v6 != 0.0)
  {
    PBDataWriterWriteFloatField();
  }

  if ([(VISObjectSelectionConfig *)self enable_object_selection])
  {
    PBDataWriterWriteBOOLField();
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && (unknown_label_threshold = self->_unknown_label_threshold, objc_msgSend(equalCopy, "unknown_label_threshold"), unknown_label_threshold == v6) && (enable_text_state_selection = self->_enable_text_state_selection, enable_text_state_selection == objc_msgSend(equalCopy, "enable_text_state_selection")) && (max_number_of_text_entities = self->_max_number_of_text_entities, max_number_of_text_entities == objc_msgSend(equalCopy, "max_number_of_text_entities")) && (text_book_world_distance_threshold = self->_text_book_world_distance_threshold, objc_msgSend(equalCopy, "text_book_world_distance_threshold"), text_book_world_distance_threshold == v10) && (bounding_box_padding_for_cropping = self->_bounding_box_padding_for_cropping, objc_msgSend(equalCopy, "bounding_box_padding_for_cropping"), bounding_box_padding_for_cropping == v12))
  {
    enable_object_selection = self->_enable_object_selection;
    v13 = enable_object_selection == [equalCopy enable_object_selection];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (unint64_t)hash
{
  v4 = 2654435761;
  unknown_label_threshold = self->_unknown_label_threshold;
  v6 = unknown_label_threshold < 0.0;
  if (unknown_label_threshold == 0.0)
  {
    v10 = 0;
  }

  else
  {
    v7 = unknown_label_threshold;
    if (v6)
    {
      v7 = -v7;
    }

    *v2.i64 = floor(v7 + 0.5);
    v8 = (v7 - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v9.f64[0] = NAN;
    v9.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v9), v3, v2);
    v10 = 2654435761u * *v2.i64;
    if (v8 >= 0.0)
    {
      if (v8 > 0.0)
      {
        v10 += v8;
      }
    }

    else
    {
      v10 -= fabs(v8);
    }
  }

  text_book_world_distance_threshold = self->_text_book_world_distance_threshold;
  v12 = text_book_world_distance_threshold < 0.0;
  if (text_book_world_distance_threshold == 0.0)
  {
    v16 = 0;
  }

  else
  {
    v13 = text_book_world_distance_threshold;
    if (v12)
    {
      v13 = -v13;
    }

    *v2.i64 = floor(v13 + 0.5);
    v14 = (v13 - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v15.f64[0] = NAN;
    v15.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v15), v3, v2);
    v16 = 2654435761u * *v2.i64;
    if (v14 >= 0.0)
    {
      if (v14 > 0.0)
      {
        v16 += v14;
      }
    }

    else
    {
      v16 -= fabs(v14);
    }
  }

  bounding_box_padding_for_cropping = self->_bounding_box_padding_for_cropping;
  v18 = bounding_box_padding_for_cropping < 0.0;
  if (bounding_box_padding_for_cropping == 0.0)
  {
    v22 = 0;
  }

  else
  {
    v19 = bounding_box_padding_for_cropping;
    if (v18)
    {
      v19 = -v19;
    }

    *v2.i64 = floor(v19 + 0.5);
    v20 = (v19 - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v21.f64[0] = NAN;
    v21.f64[1] = NAN;
    v22 = 2654435761u * *vbslq_s8(vnegq_f64(v21), v3, v2).i64;
    if (v20 >= 0.0)
    {
      if (v20 > 0.0)
      {
        v22 += v20;
      }
    }

    else
    {
      v22 -= fabs(v20);
    }
  }

  if (self->_enable_text_state_selection)
  {
    v23 = 2654435761;
  }

  else
  {
    v23 = 0;
  }

  if (!self->_enable_object_selection)
  {
    v4 = 0;
  }

  return v23 ^ v10 ^ v16 ^ v22 ^ (2654435761 * self->_max_number_of_text_entities) ^ v4;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (self->_bounding_box_padding_for_cropping != 0.0)
  {
    v4 = MEMORY[0x1E696AD98];
    [(VISObjectSelectionConfig *)self bounding_box_padding_for_cropping];
    v5 = [v4 numberWithFloat:?];
    [dictionary setObject:v5 forKeyedSubscript:@"boundingBoxPaddingForCropping"];
  }

  if (self->_enable_object_selection)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[VISObjectSelectionConfig enable_object_selection](self, "enable_object_selection")}];
    [dictionary setObject:v6 forKeyedSubscript:@"enableObjectSelection"];
  }

  if (self->_enable_text_state_selection)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[VISObjectSelectionConfig enable_text_state_selection](self, "enable_text_state_selection")}];
    [dictionary setObject:v7 forKeyedSubscript:@"enableTextStateSelection"];
  }

  if (self->_max_number_of_text_entities)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithInt:{-[VISObjectSelectionConfig max_number_of_text_entities](self, "max_number_of_text_entities")}];
    [dictionary setObject:v8 forKeyedSubscript:@"maxNumberOfTextEntities"];
  }

  if (self->_text_book_world_distance_threshold != 0.0)
  {
    v9 = MEMORY[0x1E696AD98];
    [(VISObjectSelectionConfig *)self text_book_world_distance_threshold];
    v10 = [v9 numberWithFloat:?];
    [dictionary setObject:v10 forKeyedSubscript:@"textBookWorldDistanceThreshold"];
  }

  if (self->_unknown_label_threshold != 0.0)
  {
    v11 = MEMORY[0x1E696AD98];
    [(VISObjectSelectionConfig *)self unknown_label_threshold];
    v12 = [v11 numberWithFloat:?];
    [dictionary setObject:v12 forKeyedSubscript:@"unknownLabelThreshold"];
  }

  return dictionary;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(VISObjectSelectionConfig *)self dictionaryRepresentation];
  if ([MEMORY[0x1E696ACB0] isValidJSONObject:dictionaryRepresentation])
  {
    v3 = [MEMORY[0x1E696ACB0] dataWithJSONObject:dictionaryRepresentation options:0 error:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (VISObjectSelectionConfig)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(VISObjectSelectionConfig *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (VISObjectSelectionConfig)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v14.receiver = self;
  v14.super_class = VISObjectSelectionConfig;
  v5 = [(VISObjectSelectionConfig *)&v14 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"unknownLabelThreshold"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v6 floatValue];
      [(VISObjectSelectionConfig *)v5 setUnknown_label_threshold:?];
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"enableTextStateSelection"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[VISObjectSelectionConfig setEnable_text_state_selection:](v5, "setEnable_text_state_selection:", [v7 BOOLValue]);
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"maxNumberOfTextEntities"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[VISObjectSelectionConfig setMax_number_of_text_entities:](v5, "setMax_number_of_text_entities:", [v8 intValue]);
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"textBookWorldDistanceThreshold"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v9 floatValue];
      [(VISObjectSelectionConfig *)v5 setText_book_world_distance_threshold:?];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"boundingBoxPaddingForCropping"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v10 floatValue];
      [(VISObjectSelectionConfig *)v5 setBounding_box_padding_for_cropping:?];
    }

    v11 = [dictionaryCopy objectForKeyedSubscript:@"enableObjectSelection"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[VISObjectSelectionConfig setEnable_object_selection:](v5, "setEnable_object_selection:", [v11 BOOLValue]);
    }

    v12 = v5;
  }

  return v5;
}

@end