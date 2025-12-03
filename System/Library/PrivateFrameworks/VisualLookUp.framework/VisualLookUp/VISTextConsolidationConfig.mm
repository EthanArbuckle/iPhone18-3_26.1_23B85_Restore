@interface VISTextConsolidationConfig
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (VISTextConsolidationConfig)initWithDictionary:(id)dictionary;
- (VISTextConsolidationConfig)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation VISTextConsolidationConfig

- (void)writeTo:(id)to
{
  toCopy = to;
  [(VISTextConsolidationConfig *)self match_cost_threshold];
  if (v4 != 0.0)
  {
    PBDataWriterWriteFloatField();
  }

  [(VISTextConsolidationConfig *)self font_size_start_reporting_threshold];
  if (v5 != 0.0)
  {
    PBDataWriterWriteFloatField();
  }

  [(VISTextConsolidationConfig *)self font_size_stop_reporting_threshold];
  if (v6 != 0.0)
  {
    PBDataWriterWriteFloatField();
  }

  [(VISTextConsolidationConfig *)self angular_offset_exponential_smoothing];
  if (v7 != 0.0)
  {
    PBDataWriterWriteFloatField();
  }

  [(VISTextConsolidationConfig *)self model_aspect_ratio];
  if (v8 != 0.0)
  {
    PBDataWriterWriteFloatField();
  }

  [(VISTextConsolidationConfig *)self confidence_threshold];
  if (v9 != 0.0)
  {
    PBDataWriterWriteFloatField();
  }

  [(VISTextConsolidationConfig *)self confidence_filter_ratio];
  if (v10 != 0.0)
  {
    PBDataWriterWriteFloatField();
  }

  [(VISTextConsolidationConfig *)self confidence_hysteresis_value_lag];
  if (v11 != 0.0)
  {
    PBDataWriterWriteFloatField();
  }

  [(VISTextConsolidationConfig *)self confidence_hysteresis_temporal_lag_before_confident];
  if (v12 != 0.0)
  {
    PBDataWriterWriteFloatField();
  }

  [(VISTextConsolidationConfig *)self confidence_hysteresis_temporal_lag_before_not_confident];
  if (v13 != 0.0)
  {
    PBDataWriterWriteFloatField();
  }

  if ([(VISTextConsolidationConfig *)self enable_smoothed_transformation])
  {
    PBDataWriterWriteBOOLField();
  }

  [(VISTextConsolidationConfig *)self geo_cost_depth_threshold];
  if (v14 != 0.0)
  {
    PBDataWriterWriteFloatField();
  }

  [(VISTextConsolidationConfig *)self world_position_update_distance_threshold];
  v15 = toCopy;
  if (v16 != 0.0)
  {
    PBDataWriterWriteFloatField();
    v15 = toCopy;
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && (match_cost_threshold = self->_match_cost_threshold, objc_msgSend(equalCopy, "match_cost_threshold"), match_cost_threshold == v6) && (font_size_start_reporting_threshold = self->_font_size_start_reporting_threshold, objc_msgSend(equalCopy, "font_size_start_reporting_threshold"), font_size_start_reporting_threshold == v8) && (font_size_stop_reporting_threshold = self->_font_size_stop_reporting_threshold, objc_msgSend(equalCopy, "font_size_stop_reporting_threshold"), font_size_stop_reporting_threshold == v10) && (angular_offset_exponential_smoothing = self->_angular_offset_exponential_smoothing, objc_msgSend(equalCopy, "angular_offset_exponential_smoothing"), angular_offset_exponential_smoothing == v12) && (model_aspect_ratio = self->_model_aspect_ratio, objc_msgSend(equalCopy, "model_aspect_ratio"), model_aspect_ratio == v14) && (confidence_threshold = self->_confidence_threshold, objc_msgSend(equalCopy, "confidence_threshold"), confidence_threshold == v16) && (confidence_filter_ratio = self->_confidence_filter_ratio, objc_msgSend(equalCopy, "confidence_filter_ratio"), confidence_filter_ratio == v18) && (confidence_hysteresis_value_lag = self->_confidence_hysteresis_value_lag, objc_msgSend(equalCopy, "confidence_hysteresis_value_lag"), confidence_hysteresis_value_lag == v20) && (confidence_hysteresis_temporal_lag_before_confident = self->_confidence_hysteresis_temporal_lag_before_confident, objc_msgSend(equalCopy, "confidence_hysteresis_temporal_lag_before_confident"), confidence_hysteresis_temporal_lag_before_confident == v22) && (confidence_hysteresis_temporal_lag_before_not_confident = self->_confidence_hysteresis_temporal_lag_before_not_confident, objc_msgSend(equalCopy, "confidence_hysteresis_temporal_lag_before_not_confident"), confidence_hysteresis_temporal_lag_before_not_confident == v24) && (enable_smoothed_transformation = self->_enable_smoothed_transformation, enable_smoothed_transformation == objc_msgSend(equalCopy, "enable_smoothed_transformation")) && (geo_cost_depth_threshold = self->_geo_cost_depth_threshold, objc_msgSend(equalCopy, "geo_cost_depth_threshold"), geo_cost_depth_threshold == v27))
  {
    world_position_update_distance_threshold = self->_world_position_update_distance_threshold;
    [equalCopy world_position_update_distance_threshold];
    v28 = world_position_update_distance_threshold == v31;
  }

  else
  {
    v28 = 0;
  }

  return v28;
}

- (unint64_t)hash
{
  v4 = 2654435761;
  match_cost_threshold = self->_match_cost_threshold;
  v6 = match_cost_threshold < 0.0;
  if (match_cost_threshold == 0.0)
  {
    v10 = 0;
  }

  else
  {
    v7 = match_cost_threshold;
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

  font_size_start_reporting_threshold = self->_font_size_start_reporting_threshold;
  v12 = font_size_start_reporting_threshold < 0.0;
  if (font_size_start_reporting_threshold == 0.0)
  {
    v16 = 0;
  }

  else
  {
    v13 = font_size_start_reporting_threshold;
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

  font_size_stop_reporting_threshold = self->_font_size_stop_reporting_threshold;
  v18 = font_size_stop_reporting_threshold < 0.0;
  if (font_size_stop_reporting_threshold == 0.0)
  {
    v22 = 0;
  }

  else
  {
    v19 = font_size_stop_reporting_threshold;
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

  angular_offset_exponential_smoothing = self->_angular_offset_exponential_smoothing;
  v24 = angular_offset_exponential_smoothing < 0.0;
  if (angular_offset_exponential_smoothing == 0.0)
  {
    v28 = 0;
  }

  else
  {
    v25 = angular_offset_exponential_smoothing;
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

  model_aspect_ratio = self->_model_aspect_ratio;
  v30 = model_aspect_ratio < 0.0;
  if (model_aspect_ratio == 0.0)
  {
    v34 = 0;
  }

  else
  {
    v31 = model_aspect_ratio;
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

  confidence_threshold = self->_confidence_threshold;
  v36 = confidence_threshold < 0.0;
  if (confidence_threshold == 0.0)
  {
    v40 = 0;
  }

  else
  {
    v37 = confidence_threshold;
    if (v36)
    {
      v37 = -v37;
    }

    *v2.i64 = floor(v37 + 0.5);
    v38 = (v37 - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v39.f64[0] = NAN;
    v39.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v39), v3, v2);
    v40 = 2654435761u * *v2.i64;
    if (v38 >= 0.0)
    {
      if (v38 > 0.0)
      {
        v40 += v38;
      }
    }

    else
    {
      v40 -= fabs(v38);
    }
  }

  confidence_filter_ratio = self->_confidence_filter_ratio;
  v42 = confidence_filter_ratio < 0.0;
  if (confidence_filter_ratio == 0.0)
  {
    v46 = 0;
  }

  else
  {
    v43 = confidence_filter_ratio;
    if (v42)
    {
      v43 = -v43;
    }

    *v2.i64 = floor(v43 + 0.5);
    v44 = (v43 - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v45.f64[0] = NAN;
    v45.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v45), v3, v2);
    v46 = 2654435761u * *v2.i64;
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

  confidence_hysteresis_value_lag = self->_confidence_hysteresis_value_lag;
  v48 = confidence_hysteresis_value_lag < 0.0;
  if (confidence_hysteresis_value_lag == 0.0)
  {
    v52 = 0;
  }

  else
  {
    v49 = confidence_hysteresis_value_lag;
    if (v48)
    {
      v49 = -v49;
    }

    *v2.i64 = floor(v49 + 0.5);
    v50 = (v49 - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v51.f64[0] = NAN;
    v51.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v51), v3, v2);
    v52 = 2654435761u * *v2.i64;
    if (v50 >= 0.0)
    {
      if (v50 > 0.0)
      {
        v52 += v50;
      }
    }

    else
    {
      v52 -= fabs(v50);
    }
  }

  confidence_hysteresis_temporal_lag_before_confident = self->_confidence_hysteresis_temporal_lag_before_confident;
  v54 = confidence_hysteresis_temporal_lag_before_confident < 0.0;
  if (confidence_hysteresis_temporal_lag_before_confident == 0.0)
  {
    v58 = 0;
  }

  else
  {
    v55 = confidence_hysteresis_temporal_lag_before_confident;
    if (v54)
    {
      v55 = -v55;
    }

    *v2.i64 = floor(v55 + 0.5);
    v56 = (v55 - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v57.f64[0] = NAN;
    v57.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v57), v3, v2);
    v58 = 2654435761u * *v2.i64;
    if (v56 >= 0.0)
    {
      if (v56 > 0.0)
      {
        v58 += v56;
      }
    }

    else
    {
      v58 -= fabs(v56);
    }
  }

  confidence_hysteresis_temporal_lag_before_not_confident = self->_confidence_hysteresis_temporal_lag_before_not_confident;
  v60 = confidence_hysteresis_temporal_lag_before_not_confident < 0.0;
  if (confidence_hysteresis_temporal_lag_before_not_confident == 0.0)
  {
    v64 = 0;
  }

  else
  {
    v61 = confidence_hysteresis_temporal_lag_before_not_confident;
    if (v60)
    {
      v61 = -v61;
    }

    *v2.i64 = floor(v61 + 0.5);
    v62 = (v61 - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v63.f64[0] = NAN;
    v63.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v63), v3, v2);
    v64 = 2654435761u * *v2.i64;
    if (v62 >= 0.0)
    {
      if (v62 > 0.0)
      {
        v64 += v62;
      }
    }

    else
    {
      v64 -= fabs(v62);
    }
  }

  geo_cost_depth_threshold = self->_geo_cost_depth_threshold;
  v66 = geo_cost_depth_threshold < 0.0;
  if (geo_cost_depth_threshold == 0.0)
  {
    v70 = 0;
  }

  else
  {
    v67 = geo_cost_depth_threshold;
    if (v66)
    {
      v67 = -v67;
    }

    *v2.i64 = floor(v67 + 0.5);
    v68 = (v67 - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v69.f64[0] = NAN;
    v69.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v69), v3, v2);
    v70 = 2654435761u * *v2.i64;
    if (v68 >= 0.0)
    {
      if (v68 > 0.0)
      {
        v70 += v68;
      }
    }

    else
    {
      v70 -= fabs(v68);
    }
  }

  enable_smoothed_transformation = self->_enable_smoothed_transformation;
  world_position_update_distance_threshold = self->_world_position_update_distance_threshold;
  v73 = world_position_update_distance_threshold < 0.0;
  if (world_position_update_distance_threshold == 0.0)
  {
    v77 = 0;
  }

  else
  {
    v74 = world_position_update_distance_threshold;
    if (v73)
    {
      v74 = -v74;
    }

    *v2.i64 = floor(v74 + 0.5);
    v75 = (v74 - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v76.f64[0] = NAN;
    v76.f64[1] = NAN;
    v77 = 2654435761u * *vbslq_s8(vnegq_f64(v76), v3, v2).i64;
    if (v75 >= 0.0)
    {
      if (v75 > 0.0)
      {
        v77 += v75;
      }
    }

    else
    {
      v77 -= fabs(v75);
    }
  }

  if (!enable_smoothed_transformation)
  {
    v4 = 0;
  }

  return v16 ^ v10 ^ v22 ^ v28 ^ v34 ^ v40 ^ v46 ^ v52 ^ v58 ^ v64 ^ v70 ^ v77 ^ v4;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (self->_angular_offset_exponential_smoothing != 0.0)
  {
    v4 = MEMORY[0x1E696AD98];
    [(VISTextConsolidationConfig *)self angular_offset_exponential_smoothing];
    v5 = [v4 numberWithFloat:?];
    [dictionary setObject:v5 forKeyedSubscript:@"angularOffsetExponentialSmoothing"];
  }

  if (self->_confidence_filter_ratio != 0.0)
  {
    v6 = MEMORY[0x1E696AD98];
    [(VISTextConsolidationConfig *)self confidence_filter_ratio];
    v7 = [v6 numberWithFloat:?];
    [dictionary setObject:v7 forKeyedSubscript:@"confidenceFilterRatio"];
  }

  if (self->_confidence_hysteresis_temporal_lag_before_confident != 0.0)
  {
    v8 = MEMORY[0x1E696AD98];
    [(VISTextConsolidationConfig *)self confidence_hysteresis_temporal_lag_before_confident];
    v9 = [v8 numberWithFloat:?];
    [dictionary setObject:v9 forKeyedSubscript:@"confidenceHysteresisTemporalLagBeforeConfident"];
  }

  if (self->_confidence_hysteresis_temporal_lag_before_not_confident != 0.0)
  {
    v10 = MEMORY[0x1E696AD98];
    [(VISTextConsolidationConfig *)self confidence_hysteresis_temporal_lag_before_not_confident];
    v11 = [v10 numberWithFloat:?];
    [dictionary setObject:v11 forKeyedSubscript:@"confidenceHysteresisTemporalLagBeforeNotConfident"];
  }

  if (self->_confidence_hysteresis_value_lag != 0.0)
  {
    v12 = MEMORY[0x1E696AD98];
    [(VISTextConsolidationConfig *)self confidence_hysteresis_value_lag];
    v13 = [v12 numberWithFloat:?];
    [dictionary setObject:v13 forKeyedSubscript:@"confidenceHysteresisValueLag"];
  }

  if (self->_confidence_threshold != 0.0)
  {
    v14 = MEMORY[0x1E696AD98];
    [(VISTextConsolidationConfig *)self confidence_threshold];
    v15 = [v14 numberWithFloat:?];
    [dictionary setObject:v15 forKeyedSubscript:@"confidenceThreshold"];
  }

  if (self->_enable_smoothed_transformation)
  {
    v16 = [MEMORY[0x1E696AD98] numberWithBool:{-[VISTextConsolidationConfig enable_smoothed_transformation](self, "enable_smoothed_transformation")}];
    [dictionary setObject:v16 forKeyedSubscript:@"enableSmoothedTransformation"];
  }

  if (self->_font_size_start_reporting_threshold != 0.0)
  {
    v17 = MEMORY[0x1E696AD98];
    [(VISTextConsolidationConfig *)self font_size_start_reporting_threshold];
    v18 = [v17 numberWithFloat:?];
    [dictionary setObject:v18 forKeyedSubscript:@"fontSizeStartReportingThreshold"];
  }

  if (self->_font_size_stop_reporting_threshold != 0.0)
  {
    v19 = MEMORY[0x1E696AD98];
    [(VISTextConsolidationConfig *)self font_size_stop_reporting_threshold];
    v20 = [v19 numberWithFloat:?];
    [dictionary setObject:v20 forKeyedSubscript:@"fontSizeStopReportingThreshold"];
  }

  if (self->_geo_cost_depth_threshold != 0.0)
  {
    v21 = MEMORY[0x1E696AD98];
    [(VISTextConsolidationConfig *)self geo_cost_depth_threshold];
    v22 = [v21 numberWithFloat:?];
    [dictionary setObject:v22 forKeyedSubscript:@"geoCostDepthThreshold"];
  }

  if (self->_match_cost_threshold != 0.0)
  {
    v23 = MEMORY[0x1E696AD98];
    [(VISTextConsolidationConfig *)self match_cost_threshold];
    v24 = [v23 numberWithFloat:?];
    [dictionary setObject:v24 forKeyedSubscript:@"matchCostThreshold"];
  }

  if (self->_model_aspect_ratio != 0.0)
  {
    v25 = MEMORY[0x1E696AD98];
    [(VISTextConsolidationConfig *)self model_aspect_ratio];
    v26 = [v25 numberWithFloat:?];
    [dictionary setObject:v26 forKeyedSubscript:@"modelAspectRatio"];
  }

  if (self->_world_position_update_distance_threshold != 0.0)
  {
    v27 = MEMORY[0x1E696AD98];
    [(VISTextConsolidationConfig *)self world_position_update_distance_threshold];
    v28 = [v27 numberWithFloat:?];
    [dictionary setObject:v28 forKeyedSubscript:@"worldPositionUpdateDistanceThreshold"];
  }

  return dictionary;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(VISTextConsolidationConfig *)self dictionaryRepresentation];
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

- (VISTextConsolidationConfig)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(VISTextConsolidationConfig *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (VISTextConsolidationConfig)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v28.receiver = self;
  v28.super_class = VISTextConsolidationConfig;
  v5 = [(VISTextConsolidationConfig *)&v28 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"matchCostThreshold"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v6 floatValue];
      [(VISTextConsolidationConfig *)v5 setMatch_cost_threshold:?];
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"fontSizeStartReportingThreshold"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v7 floatValue];
      [(VISTextConsolidationConfig *)v5 setFont_size_start_reporting_threshold:?];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"fontSizeStopReportingThreshold"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v8 floatValue];
      [(VISTextConsolidationConfig *)v5 setFont_size_stop_reporting_threshold:?];
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"angularOffsetExponentialSmoothing"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v9 floatValue];
      [(VISTextConsolidationConfig *)v5 setAngular_offset_exponential_smoothing:?];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"modelAspectRatio"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v10 floatValue];
      [(VISTextConsolidationConfig *)v5 setModel_aspect_ratio:?];
    }

    v11 = [dictionaryCopy objectForKeyedSubscript:@"confidenceThreshold"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v11 floatValue];
      [(VISTextConsolidationConfig *)v5 setConfidence_threshold:?];
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"confidenceFilterRatio"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v12 floatValue];
      [(VISTextConsolidationConfig *)v5 setConfidence_filter_ratio:?];
    }

    v27 = v6;
    v13 = [dictionaryCopy objectForKeyedSubscript:{@"confidenceHysteresisValueLag", v12}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v13 floatValue];
      [(VISTextConsolidationConfig *)v5 setConfidence_hysteresis_value_lag:?];
    }

    v26 = v7;
    v14 = [dictionaryCopy objectForKeyedSubscript:@"confidenceHysteresisTemporalLagBeforeConfident"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v14 floatValue];
      [(VISTextConsolidationConfig *)v5 setConfidence_hysteresis_temporal_lag_before_confident:?];
    }

    v25 = v8;
    v15 = [dictionaryCopy objectForKeyedSubscript:@"confidenceHysteresisTemporalLagBeforeNotConfident"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v15 floatValue];
      [(VISTextConsolidationConfig *)v5 setConfidence_hysteresis_temporal_lag_before_not_confident:?];
    }

    v23 = v11;
    v24 = v9;
    v16 = [dictionaryCopy objectForKeyedSubscript:@"enableSmoothedTransformation"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[VISTextConsolidationConfig setEnable_smoothed_transformation:](v5, "setEnable_smoothed_transformation:", [v16 BOOLValue]);
    }

    v17 = v10;
    v18 = [dictionaryCopy objectForKeyedSubscript:@"geoCostDepthThreshold"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v18 floatValue];
      [(VISTextConsolidationConfig *)v5 setGeo_cost_depth_threshold:?];
    }

    v19 = [dictionaryCopy objectForKeyedSubscript:@"worldPositionUpdateDistanceThreshold"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v19 floatValue];
      [(VISTextConsolidationConfig *)v5 setWorld_position_update_distance_threshold:?];
    }

    v20 = v5;
  }

  return v5;
}

@end