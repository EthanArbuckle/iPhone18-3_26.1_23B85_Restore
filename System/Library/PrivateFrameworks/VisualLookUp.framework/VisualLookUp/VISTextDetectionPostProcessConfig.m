@interface VISTextDetectionPostProcessConfig
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (VISTextDetectionPostProcessConfig)initWithDictionary:(id)a3;
- (VISTextDetectionPostProcessConfig)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
@end

@implementation VISTextDetectionPostProcessConfig

- (void)writeTo:(id)a3
{
  v11 = a3;
  if ([(VISTextDetectionPostProcessConfig *)self enable_text_bounding_box_merge])
  {
    PBDataWriterWriteBOOLField();
  }

  [(VISTextDetectionPostProcessConfig *)self text_merge_iou_threshold];
  if (v4 != 0.0)
  {
    PBDataWriterWriteFloatField();
  }

  if ([(VISTextDetectionPostProcessConfig *)self enable_text_bounding_box_suppress])
  {
    PBDataWriterWriteBOOLField();
  }

  if ([(VISTextDetectionPostProcessConfig *)self enable_text_font_size_suppress])
  {
    PBDataWriterWriteBOOLField();
  }

  [(VISTextDetectionPostProcessConfig *)self font_size_suppress_threshold];
  if (v5 != 0.0)
  {
    PBDataWriterWriteFloatField();
  }

  if ([(VISTextDetectionPostProcessConfig *)self enable_text_confidence_suppress])
  {
    PBDataWriterWriteBOOLField();
  }

  [(VISTextDetectionPostProcessConfig *)self text_confidence_suppress_threshold];
  if (v6 != 0.0)
  {
    PBDataWriterWriteFloatField();
  }

  if ([(VISTextDetectionPostProcessConfig *)self enable_text_bbox_size_suppress])
  {
    PBDataWriterWriteBOOLField();
  }

  [(VISTextDetectionPostProcessConfig *)self text_bbox_size_suppress_threshold];
  if (v7 != 0.0)
  {
    PBDataWriterWriteFloatField();
  }

  if ([(VISTextDetectionPostProcessConfig *)self enable_text_negative_objects_suppress])
  {
    PBDataWriterWriteBOOLField();
  }

  [(VISTextDetectionPostProcessConfig *)self text_suppress_iou_threshold];
  if (v8 != 0.0)
  {
    PBDataWriterWriteFloatField();
  }

  [(VISTextDetectionPostProcessConfig *)self padding_for_text_result_merge];
  v9 = v11;
  if (v10 != 0.0)
  {
    PBDataWriterWriteFloatField();
    v9 = v11;
  }
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && (enable_text_bounding_box_merge = self->_enable_text_bounding_box_merge, enable_text_bounding_box_merge == objc_msgSend(v4, "enable_text_bounding_box_merge")) && (text_merge_iou_threshold = self->_text_merge_iou_threshold, objc_msgSend(v4, "text_merge_iou_threshold"), text_merge_iou_threshold == v7) && (enable_text_bounding_box_suppress = self->_enable_text_bounding_box_suppress, enable_text_bounding_box_suppress == objc_msgSend(v4, "enable_text_bounding_box_suppress")) && (enable_text_font_size_suppress = self->_enable_text_font_size_suppress, enable_text_font_size_suppress == objc_msgSend(v4, "enable_text_font_size_suppress")) && (font_size_suppress_threshold = self->_font_size_suppress_threshold, objc_msgSend(v4, "font_size_suppress_threshold"), font_size_suppress_threshold == v11) && (enable_text_confidence_suppress = self->_enable_text_confidence_suppress, enable_text_confidence_suppress == objc_msgSend(v4, "enable_text_confidence_suppress")) && (text_confidence_suppress_threshold = self->_text_confidence_suppress_threshold, objc_msgSend(v4, "text_confidence_suppress_threshold"), text_confidence_suppress_threshold == v14) && (enable_text_bbox_size_suppress = self->_enable_text_bbox_size_suppress, enable_text_bbox_size_suppress == objc_msgSend(v4, "enable_text_bbox_size_suppress")) && (text_bbox_size_suppress_threshold = self->_text_bbox_size_suppress_threshold, objc_msgSend(v4, "text_bbox_size_suppress_threshold"), text_bbox_size_suppress_threshold == v17) && (enable_text_negative_objects_suppress = self->_enable_text_negative_objects_suppress, enable_text_negative_objects_suppress == objc_msgSend(v4, "enable_text_negative_objects_suppress")) && (text_suppress_iou_threshold = self->_text_suppress_iou_threshold, objc_msgSend(v4, "text_suppress_iou_threshold"), text_suppress_iou_threshold == v20))
  {
    padding_for_text_result_merge = self->_padding_for_text_result_merge;
    [v4 padding_for_text_result_merge];
    v21 = padding_for_text_result_merge == v24;
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

- (unint64_t)hash
{
  v4 = 2654435761;
  text_merge_iou_threshold = self->_text_merge_iou_threshold;
  v6 = text_merge_iou_threshold < 0.0;
  if (text_merge_iou_threshold == 0.0)
  {
    v10 = 0;
  }

  else
  {
    v7 = text_merge_iou_threshold;
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

  font_size_suppress_threshold = self->_font_size_suppress_threshold;
  v12 = font_size_suppress_threshold < 0.0;
  if (font_size_suppress_threshold == 0.0)
  {
    v16 = 0;
  }

  else
  {
    v13 = font_size_suppress_threshold;
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

  text_confidence_suppress_threshold = self->_text_confidence_suppress_threshold;
  v18 = text_confidence_suppress_threshold < 0.0;
  if (text_confidence_suppress_threshold == 0.0)
  {
    v22 = 0;
  }

  else
  {
    v19 = text_confidence_suppress_threshold;
    if (v18)
    {
      v19 = -v19;
    }

    *v2.i64 = floor(v19 + 0.5);
    v20 = (v19 - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v21.f64[0] = NAN;
    v21.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v21), v3, v2);
    v22 = 2654435761u * *v2.i64;
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

  text_bbox_size_suppress_threshold = self->_text_bbox_size_suppress_threshold;
  v24 = text_bbox_size_suppress_threshold < 0.0;
  if (text_bbox_size_suppress_threshold == 0.0)
  {
    v28 = 0;
  }

  else
  {
    v25 = text_bbox_size_suppress_threshold;
    if (v24)
    {
      v25 = -v25;
    }

    *v2.i64 = floor(v25 + 0.5);
    v26 = (v25 - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v27.f64[0] = NAN;
    v27.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v27), v3, v2);
    v28 = 2654435761u * *v2.i64;
    if (v26 >= 0.0)
    {
      if (v26 > 0.0)
      {
        v28 += v26;
      }
    }

    else
    {
      v28 -= fabs(v26);
    }
  }

  text_suppress_iou_threshold = self->_text_suppress_iou_threshold;
  v30 = text_suppress_iou_threshold < 0.0;
  if (text_suppress_iou_threshold == 0.0)
  {
    v34 = 0;
  }

  else
  {
    v31 = text_suppress_iou_threshold;
    if (v30)
    {
      v31 = -v31;
    }

    *v2.i64 = floor(v31 + 0.5);
    v32 = (v31 - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v33.f64[0] = NAN;
    v33.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v33), v3, v2);
    v34 = 2654435761u * *v2.i64;
    if (v32 >= 0.0)
    {
      if (v32 > 0.0)
      {
        v34 += v32;
      }
    }

    else
    {
      v34 -= fabs(v32);
    }
  }

  enable_text_bounding_box_merge = self->_enable_text_bounding_box_merge;
  enable_text_bounding_box_suppress = self->_enable_text_bounding_box_suppress;
  enable_text_font_size_suppress = self->_enable_text_font_size_suppress;
  enable_text_confidence_suppress = self->_enable_text_confidence_suppress;
  enable_text_bbox_size_suppress = self->_enable_text_bbox_size_suppress;
  enable_text_negative_objects_suppress = self->_enable_text_negative_objects_suppress;
  padding_for_text_result_merge = self->_padding_for_text_result_merge;
  v42 = padding_for_text_result_merge < 0.0;
  if (padding_for_text_result_merge == 0.0)
  {
    v46 = 0;
  }

  else
  {
    v43 = padding_for_text_result_merge;
    if (v42)
    {
      v43 = -v43;
    }

    *v2.i64 = floor(v43 + 0.5);
    v44 = (v43 - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v45.f64[0] = NAN;
    v45.f64[1] = NAN;
    v46 = 2654435761u * *vbslq_s8(vnegq_f64(v45), v3, v2).i64;
    if (v44 >= 0.0)
    {
      if (v44 > 0.0)
      {
        v46 += v44;
      }
    }

    else
    {
      v46 -= fabs(v44);
    }
  }

  if (enable_text_negative_objects_suppress)
  {
    v47 = 2654435761;
  }

  else
  {
    v47 = 0;
  }

  if (enable_text_bbox_size_suppress)
  {
    v48 = 2654435761;
  }

  else
  {
    v48 = 0;
  }

  if (enable_text_confidence_suppress)
  {
    v49 = 2654435761;
  }

  else
  {
    v49 = 0;
  }

  if (enable_text_font_size_suppress)
  {
    v50 = 2654435761;
  }

  else
  {
    v50 = 0;
  }

  if (enable_text_bounding_box_suppress)
  {
    v51 = 2654435761;
  }

  else
  {
    v51 = 0;
  }

  if (!enable_text_bounding_box_merge)
  {
    v4 = 0;
  }

  return v10 ^ v4 ^ v51 ^ v50 ^ v16 ^ v49 ^ v22 ^ v48 ^ v28 ^ v47 ^ v34 ^ v46;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (self->_enable_text_bbox_size_suppress)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[VISTextDetectionPostProcessConfig enable_text_bbox_size_suppress](self, "enable_text_bbox_size_suppress")}];
    [v3 setObject:v4 forKeyedSubscript:@"enableTextBboxSizeSuppress"];
  }

  if (self->_enable_text_bounding_box_merge)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[VISTextDetectionPostProcessConfig enable_text_bounding_box_merge](self, "enable_text_bounding_box_merge")}];
    [v3 setObject:v5 forKeyedSubscript:@"enableTextBoundingBoxMerge"];
  }

  if (self->_enable_text_bounding_box_suppress)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[VISTextDetectionPostProcessConfig enable_text_bounding_box_suppress](self, "enable_text_bounding_box_suppress")}];
    [v3 setObject:v6 forKeyedSubscript:@"enableTextBoundingBoxSuppress"];
  }

  if (self->_enable_text_confidence_suppress)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[VISTextDetectionPostProcessConfig enable_text_confidence_suppress](self, "enable_text_confidence_suppress")}];
    [v3 setObject:v7 forKeyedSubscript:@"enableTextConfidenceSuppress"];
  }

  if (self->_enable_text_font_size_suppress)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[VISTextDetectionPostProcessConfig enable_text_font_size_suppress](self, "enable_text_font_size_suppress")}];
    [v3 setObject:v8 forKeyedSubscript:@"enableTextFontSizeSuppress"];
  }

  if (self->_enable_text_negative_objects_suppress)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithBool:{-[VISTextDetectionPostProcessConfig enable_text_negative_objects_suppress](self, "enable_text_negative_objects_suppress")}];
    [v3 setObject:v9 forKeyedSubscript:@"enableTextNegativeObjectsSuppress"];
  }

  if (self->_font_size_suppress_threshold != 0.0)
  {
    v10 = MEMORY[0x1E696AD98];
    [(VISTextDetectionPostProcessConfig *)self font_size_suppress_threshold];
    v11 = [v10 numberWithFloat:?];
    [v3 setObject:v11 forKeyedSubscript:@"fontSizeSuppressThreshold"];
  }

  if (self->_padding_for_text_result_merge != 0.0)
  {
    v12 = MEMORY[0x1E696AD98];
    [(VISTextDetectionPostProcessConfig *)self padding_for_text_result_merge];
    v13 = [v12 numberWithFloat:?];
    [v3 setObject:v13 forKeyedSubscript:@"paddingForTextResultMerge"];
  }

  if (self->_text_bbox_size_suppress_threshold != 0.0)
  {
    v14 = MEMORY[0x1E696AD98];
    [(VISTextDetectionPostProcessConfig *)self text_bbox_size_suppress_threshold];
    v15 = [v14 numberWithFloat:?];
    [v3 setObject:v15 forKeyedSubscript:@"textBboxSizeSuppressThreshold"];
  }

  if (self->_text_confidence_suppress_threshold != 0.0)
  {
    v16 = MEMORY[0x1E696AD98];
    [(VISTextDetectionPostProcessConfig *)self text_confidence_suppress_threshold];
    v17 = [v16 numberWithFloat:?];
    [v3 setObject:v17 forKeyedSubscript:@"textConfidenceSuppressThreshold"];
  }

  if (self->_text_merge_iou_threshold != 0.0)
  {
    v18 = MEMORY[0x1E696AD98];
    [(VISTextDetectionPostProcessConfig *)self text_merge_iou_threshold];
    v19 = [v18 numberWithFloat:?];
    [v3 setObject:v19 forKeyedSubscript:@"textMergeIouThreshold"];
  }

  if (self->_text_suppress_iou_threshold != 0.0)
  {
    v20 = MEMORY[0x1E696AD98];
    [(VISTextDetectionPostProcessConfig *)self text_suppress_iou_threshold];
    v21 = [v20 numberWithFloat:?];
    [v3 setObject:v21 forKeyedSubscript:@"textSuppressIouThreshold"];
  }

  return v3;
}

- (NSData)jsonData
{
  v2 = [(VISTextDetectionPostProcessConfig *)self dictionaryRepresentation];
  if ([MEMORY[0x1E696ACB0] isValidJSONObject:v2])
  {
    v3 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v2 options:0 error:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (VISTextDetectionPostProcessConfig)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(VISTextDetectionPostProcessConfig *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (VISTextDetectionPostProcessConfig)initWithDictionary:(id)a3
{
  v4 = a3;
  v26.receiver = self;
  v26.super_class = VISTextDetectionPostProcessConfig;
  v5 = [(VISTextDetectionPostProcessConfig *)&v26 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"enableTextBoundingBoxMerge"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[VISTextDetectionPostProcessConfig setEnable_text_bounding_box_merge:](v5, "setEnable_text_bounding_box_merge:", [v6 BOOLValue]);
    }

    v7 = [v4 objectForKeyedSubscript:@"textMergeIouThreshold"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v7 floatValue];
      [(VISTextDetectionPostProcessConfig *)v5 setText_merge_iou_threshold:?];
    }

    v8 = [v4 objectForKeyedSubscript:@"enableTextBoundingBoxSuppress"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[VISTextDetectionPostProcessConfig setEnable_text_bounding_box_suppress:](v5, "setEnable_text_bounding_box_suppress:", [v8 BOOLValue]);
    }

    v9 = [v4 objectForKeyedSubscript:@"enableTextFontSizeSuppress"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[VISTextDetectionPostProcessConfig setEnable_text_font_size_suppress:](v5, "setEnable_text_font_size_suppress:", [v9 BOOLValue]);
    }

    v10 = [v4 objectForKeyedSubscript:@"fontSizeSuppressThreshold"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v10 floatValue];
      [(VISTextDetectionPostProcessConfig *)v5 setFont_size_suppress_threshold:?];
    }

    v11 = [v4 objectForKeyedSubscript:@"enableTextConfidenceSuppress"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[VISTextDetectionPostProcessConfig setEnable_text_confidence_suppress:](v5, "setEnable_text_confidence_suppress:", [v11 BOOLValue]);
    }

    v21 = v11;
    v12 = [v4 objectForKeyedSubscript:@"textConfidenceSuppressThreshold"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v12 floatValue];
      [(VISTextDetectionPostProcessConfig *)v5 setText_confidence_suppress_threshold:?];
    }

    v25 = v6;
    v13 = [v4 objectForKeyedSubscript:@"enableTextBboxSizeSuppress"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[VISTextDetectionPostProcessConfig setEnable_text_bbox_size_suppress:](v5, "setEnable_text_bbox_size_suppress:", [v13 BOOLValue]);
    }

    v24 = v7;
    v14 = [v4 objectForKeyedSubscript:@"textBboxSizeSuppressThreshold"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v14 floatValue];
      [(VISTextDetectionPostProcessConfig *)v5 setText_bbox_size_suppress_threshold:?];
    }

    v22 = v10;
    v23 = v8;
    v15 = [v4 objectForKeyedSubscript:@"enableTextNegativeObjectsSuppress"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[VISTextDetectionPostProcessConfig setEnable_text_negative_objects_suppress:](v5, "setEnable_text_negative_objects_suppress:", [v15 BOOLValue]);
    }

    v16 = v9;
    v17 = [v4 objectForKeyedSubscript:@"textSuppressIouThreshold"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v17 floatValue];
      [(VISTextDetectionPostProcessConfig *)v5 setText_suppress_iou_threshold:?];
    }

    v18 = [v4 objectForKeyedSubscript:@"paddingForTextResultMerge"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v18 floatValue];
      [(VISTextDetectionPostProcessConfig *)v5 setPadding_for_text_result_merge:?];
    }

    v19 = v5;
  }

  return v5;
}

@end