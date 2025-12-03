@interface VISObjectConsolidationConfig
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (VISObjectConsolidationConfig)initWithDictionary:(id)dictionary;
- (VISObjectConsolidationConfig)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation VISObjectConsolidationConfig

- (void)writeTo:(id)to
{
  toCopy = to;
  [(VISObjectConsolidationConfig *)self frame_object_iou_threshold];
  if (v4 != 0.0)
  {
    PBDataWriterWriteFloatField();
  }

  if ([(VISObjectConsolidationConfig *)self enable_packaged_products])
  {
    PBDataWriterWriteBOOLField();
  }

  if ([(VISObjectConsolidationConfig *)self enable_text_from_object_detection])
  {
    PBDataWriterWriteBOOLField();
  }

  [(VISObjectConsolidationConfig *)self nearest_object_distance_threshold];
  if (v5 != 0.0)
  {
    PBDataWriterWriteFloatField();
  }

  [(VISObjectConsolidationConfig *)self object_distance_update_threshold];
  if (v6 != 0.0)
  {
    PBDataWriterWriteFloatField();
  }

  [(VISObjectConsolidationConfig *)self adaptive_object_distance_threshold_ratio];
  if (v7 != 0.0)
  {
    PBDataWriterWriteFloatField();
  }

  [(VISObjectConsolidationConfig *)self minimal_adaptive_object_distance_threshold];
  if (v8 != 0.0)
  {
    PBDataWriterWriteFloatField();
  }

  [(VISObjectConsolidationConfig *)self nearest_object_iou_threshold];
  if (v9 != 0.0)
  {
    PBDataWriterWriteFloatField();
  }

  [(VISObjectConsolidationConfig *)self object_iou_update_threshold];
  if (v10 != 0.0)
  {
    PBDataWriterWriteFloatField();
  }

  [(VISObjectConsolidationConfig *)self label_prob_dist_threshold];
  if (v11 != 0.0)
  {
    PBDataWriterWriteFloatField();
  }

  [(VISObjectConsolidationConfig *)self sharpness_threshold];
  if (v12 != 0.0)
  {
    PBDataWriterWriteFloatField();
  }

  if ([(VISObjectConsolidationConfig *)self enable_visual_distance])
  {
    PBDataWriterWriteBOOLField();
  }

  [(VISObjectConsolidationConfig *)self tracked_decay_rate];
  if (v13 != 0.0)
  {
    PBDataWriterWriteFloatField();
  }

  [(VISObjectConsolidationConfig *)self boundary_object_padding_threshold];
  if (v14 != 0.0)
  {
    PBDataWriterWriteFloatField();
  }

  [(VISObjectConsolidationConfig *)self boundary_object_size_threshold];
  if (v15 != 0.0)
  {
    PBDataWriterWriteFloatField();
  }

  [(VISObjectConsolidationConfig *)self normal_decay_rate];
  if (v16 != 0.0)
  {
    PBDataWriterWriteFloatField();
  }

  [(VISObjectConsolidationConfig *)self depth_distance_threshold];
  if (v17 != 0.0)
  {
    PBDataWriterWriteFloatField();
  }

  [(VISObjectConsolidationConfig *)self reticle_padding];
  if (v18 != 0.0)
  {
    PBDataWriterWriteFloatField();
  }

  [(VISObjectConsolidationConfig *)self pixel_distance_threshold];
  v19 = toCopy;
  if (v20 != 0.0)
  {
    PBDataWriterWriteFloatField();
    v19 = toCopy;
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && (frame_object_iou_threshold = self->_frame_object_iou_threshold, objc_msgSend(equalCopy, "frame_object_iou_threshold"), frame_object_iou_threshold == v6) && (enable_packaged_products = self->_enable_packaged_products, enable_packaged_products == objc_msgSend(equalCopy, "enable_packaged_products")) && (enable_text_from_object_detection = self->_enable_text_from_object_detection, enable_text_from_object_detection == objc_msgSend(equalCopy, "enable_text_from_object_detection")) && (nearest_object_distance_threshold = self->_nearest_object_distance_threshold, objc_msgSend(equalCopy, "nearest_object_distance_threshold"), nearest_object_distance_threshold == v10) && (object_distance_update_threshold = self->_object_distance_update_threshold, objc_msgSend(equalCopy, "object_distance_update_threshold"), object_distance_update_threshold == v12) && (adaptive_object_distance_threshold_ratio = self->_adaptive_object_distance_threshold_ratio, objc_msgSend(equalCopy, "adaptive_object_distance_threshold_ratio"), adaptive_object_distance_threshold_ratio == v14) && (minimal_adaptive_object_distance_threshold = self->_minimal_adaptive_object_distance_threshold, objc_msgSend(equalCopy, "minimal_adaptive_object_distance_threshold"), minimal_adaptive_object_distance_threshold == v16) && (nearest_object_iou_threshold = self->_nearest_object_iou_threshold, objc_msgSend(equalCopy, "nearest_object_iou_threshold"), nearest_object_iou_threshold == v18) && (object_iou_update_threshold = self->_object_iou_update_threshold, objc_msgSend(equalCopy, "object_iou_update_threshold"), object_iou_update_threshold == v20) && (label_prob_dist_threshold = self->_label_prob_dist_threshold, objc_msgSend(equalCopy, "label_prob_dist_threshold"), label_prob_dist_threshold == v22) && (sharpness_threshold = self->_sharpness_threshold, objc_msgSend(equalCopy, "sharpness_threshold"), sharpness_threshold == v24) && (enable_visual_distance = self->_enable_visual_distance, enable_visual_distance == objc_msgSend(equalCopy, "enable_visual_distance")) && (tracked_decay_rate = self->_tracked_decay_rate, objc_msgSend(equalCopy, "tracked_decay_rate"), tracked_decay_rate == v27) && (boundary_object_padding_threshold = self->_boundary_object_padding_threshold, objc_msgSend(equalCopy, "boundary_object_padding_threshold"), boundary_object_padding_threshold == v29) && (boundary_object_size_threshold = self->_boundary_object_size_threshold, objc_msgSend(equalCopy, "boundary_object_size_threshold"), boundary_object_size_threshold == v31) && (normal_decay_rate = self->_normal_decay_rate, objc_msgSend(equalCopy, "normal_decay_rate"), normal_decay_rate == v33) && (depth_distance_threshold = self->_depth_distance_threshold, objc_msgSend(equalCopy, "depth_distance_threshold"), depth_distance_threshold == v35) && (reticle_padding = self->_reticle_padding, objc_msgSend(equalCopy, "reticle_padding"), reticle_padding == v37))
  {
    pixel_distance_threshold = self->_pixel_distance_threshold;
    [equalCopy pixel_distance_threshold];
    v38 = pixel_distance_threshold == v41;
  }

  else
  {
    v38 = 0;
  }

  return v38;
}

- (unint64_t)hash
{
  v4 = 2654435761;
  frame_object_iou_threshold = self->_frame_object_iou_threshold;
  v6 = frame_object_iou_threshold < 0.0;
  if (frame_object_iou_threshold == 0.0)
  {
    v10 = 0;
  }

  else
  {
    v7 = frame_object_iou_threshold;
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

  nearest_object_distance_threshold = self->_nearest_object_distance_threshold;
  v12 = nearest_object_distance_threshold < 0.0;
  if (nearest_object_distance_threshold == 0.0)
  {
    v16 = 0;
  }

  else
  {
    v13 = nearest_object_distance_threshold;
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

  object_distance_update_threshold = self->_object_distance_update_threshold;
  v18 = object_distance_update_threshold < 0.0;
  if (object_distance_update_threshold == 0.0)
  {
    v22 = 0;
  }

  else
  {
    v19 = object_distance_update_threshold;
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

  adaptive_object_distance_threshold_ratio = self->_adaptive_object_distance_threshold_ratio;
  v24 = adaptive_object_distance_threshold_ratio < 0.0;
  if (adaptive_object_distance_threshold_ratio == 0.0)
  {
    v28 = 0;
  }

  else
  {
    v25 = adaptive_object_distance_threshold_ratio;
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

  minimal_adaptive_object_distance_threshold = self->_minimal_adaptive_object_distance_threshold;
  v30 = minimal_adaptive_object_distance_threshold < 0.0;
  if (minimal_adaptive_object_distance_threshold == 0.0)
  {
    v34 = 0;
  }

  else
  {
    v31 = minimal_adaptive_object_distance_threshold;
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

  nearest_object_iou_threshold = self->_nearest_object_iou_threshold;
  v36 = nearest_object_iou_threshold < 0.0;
  if (nearest_object_iou_threshold == 0.0)
  {
    v40 = 0;
  }

  else
  {
    v37 = nearest_object_iou_threshold;
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

  object_iou_update_threshold = self->_object_iou_update_threshold;
  v42 = object_iou_update_threshold < 0.0;
  if (object_iou_update_threshold == 0.0)
  {
    v46 = 0;
  }

  else
  {
    v43 = object_iou_update_threshold;
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

  label_prob_dist_threshold = self->_label_prob_dist_threshold;
  v48 = label_prob_dist_threshold < 0.0;
  if (label_prob_dist_threshold == 0.0)
  {
    v52 = 0;
  }

  else
  {
    v49 = label_prob_dist_threshold;
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

  sharpness_threshold = self->_sharpness_threshold;
  v54 = sharpness_threshold < 0.0;
  if (sharpness_threshold == 0.0)
  {
    v58 = 0;
  }

  else
  {
    v55 = sharpness_threshold;
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

  tracked_decay_rate = self->_tracked_decay_rate;
  v60 = tracked_decay_rate < 0.0;
  if (tracked_decay_rate == 0.0)
  {
    v64 = 0;
  }

  else
  {
    v61 = tracked_decay_rate;
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

  boundary_object_padding_threshold = self->_boundary_object_padding_threshold;
  v66 = boundary_object_padding_threshold < 0.0;
  if (boundary_object_padding_threshold == 0.0)
  {
    v70 = 0;
  }

  else
  {
    v67 = boundary_object_padding_threshold;
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

  boundary_object_size_threshold = self->_boundary_object_size_threshold;
  v72 = boundary_object_size_threshold < 0.0;
  if (boundary_object_size_threshold == 0.0)
  {
    v76 = 0;
  }

  else
  {
    v73 = boundary_object_size_threshold;
    if (v72)
    {
      v73 = -v73;
    }

    *v2.i64 = floor(v73 + 0.5);
    v74 = (v73 - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v75.f64[0] = NAN;
    v75.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v75), v3, v2);
    v76 = 2654435761u * *v2.i64;
    if (v74 >= 0.0)
    {
      if (v74 > 0.0)
      {
        v76 += v74;
      }
    }

    else
    {
      v76 -= fabs(v74);
    }
  }

  normal_decay_rate = self->_normal_decay_rate;
  v78 = normal_decay_rate < 0.0;
  if (normal_decay_rate == 0.0)
  {
    v82 = 0;
  }

  else
  {
    v79 = normal_decay_rate;
    if (v78)
    {
      v79 = -v79;
    }

    *v2.i64 = floor(v79 + 0.5);
    v80 = (v79 - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v81.f64[0] = NAN;
    v81.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v81), v3, v2);
    v82 = 2654435761u * *v2.i64;
    if (v80 >= 0.0)
    {
      if (v80 > 0.0)
      {
        v82 += v80;
      }
    }

    else
    {
      v82 -= fabs(v80);
    }
  }

  depth_distance_threshold = self->_depth_distance_threshold;
  v84 = depth_distance_threshold < 0.0;
  if (depth_distance_threshold == 0.0)
  {
    v88 = 0;
  }

  else
  {
    v85 = depth_distance_threshold;
    if (v84)
    {
      v85 = -v85;
    }

    *v2.i64 = floor(v85 + 0.5);
    v86 = (v85 - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v87.f64[0] = NAN;
    v87.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v87), v3, v2);
    v88 = 2654435761u * *v2.i64;
    if (v86 >= 0.0)
    {
      if (v86 > 0.0)
      {
        v88 += v86;
      }
    }

    else
    {
      v88 -= fabs(v86);
    }
  }

  reticle_padding = self->_reticle_padding;
  v90 = reticle_padding < 0.0;
  if (reticle_padding == 0.0)
  {
    v94 = 0;
  }

  else
  {
    v91 = reticle_padding;
    if (v90)
    {
      v91 = -v91;
    }

    *v2.i64 = floor(v91 + 0.5);
    v92 = (v91 - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v93.f64[0] = NAN;
    v93.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v93), v3, v2);
    v94 = 2654435761u * *v2.i64;
    if (v92 >= 0.0)
    {
      if (v92 > 0.0)
      {
        v94 += v92;
      }
    }

    else
    {
      v94 -= fabs(v92);
    }
  }

  enable_packaged_products = self->_enable_packaged_products;
  enable_text_from_object_detection = self->_enable_text_from_object_detection;
  enable_visual_distance = self->_enable_visual_distance;
  pixel_distance_threshold = self->_pixel_distance_threshold;
  v99 = pixel_distance_threshold < 0.0;
  if (pixel_distance_threshold == 0.0)
  {
    v103 = 0;
  }

  else
  {
    v100 = pixel_distance_threshold;
    if (v99)
    {
      v100 = -v100;
    }

    *v2.i64 = floor(v100 + 0.5);
    v101 = (v100 - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v102.f64[0] = NAN;
    v102.f64[1] = NAN;
    v103 = 2654435761u * *vbslq_s8(vnegq_f64(v102), v3, v2).i64;
    if (v101 >= 0.0)
    {
      if (v101 > 0.0)
      {
        v103 += v101;
      }
    }

    else
    {
      v103 -= fabs(v101);
    }
  }

  if (enable_visual_distance)
  {
    v104 = 2654435761;
  }

  else
  {
    v104 = 0;
  }

  if (enable_text_from_object_detection)
  {
    v105 = 2654435761;
  }

  else
  {
    v105 = 0;
  }

  if (!enable_packaged_products)
  {
    v4 = 0;
  }

  return v4 ^ v10 ^ v105 ^ v16 ^ v22 ^ v28 ^ v34 ^ v40 ^ v46 ^ v52 ^ v58 ^ v104 ^ v64 ^ v70 ^ v76 ^ v82 ^ v88 ^ v94 ^ v103;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (self->_adaptive_object_distance_threshold_ratio != 0.0)
  {
    v4 = MEMORY[0x1E696AD98];
    [(VISObjectConsolidationConfig *)self adaptive_object_distance_threshold_ratio];
    v5 = [v4 numberWithFloat:?];
    [dictionary setObject:v5 forKeyedSubscript:@"adaptiveObjectDistanceThresholdRatio"];
  }

  if (self->_boundary_object_padding_threshold != 0.0)
  {
    v6 = MEMORY[0x1E696AD98];
    [(VISObjectConsolidationConfig *)self boundary_object_padding_threshold];
    v7 = [v6 numberWithFloat:?];
    [dictionary setObject:v7 forKeyedSubscript:@"boundaryObjectPaddingThreshold"];
  }

  if (self->_boundary_object_size_threshold != 0.0)
  {
    v8 = MEMORY[0x1E696AD98];
    [(VISObjectConsolidationConfig *)self boundary_object_size_threshold];
    v9 = [v8 numberWithFloat:?];
    [dictionary setObject:v9 forKeyedSubscript:@"boundaryObjectSizeThreshold"];
  }

  if (self->_depth_distance_threshold != 0.0)
  {
    v10 = MEMORY[0x1E696AD98];
    [(VISObjectConsolidationConfig *)self depth_distance_threshold];
    v11 = [v10 numberWithFloat:?];
    [dictionary setObject:v11 forKeyedSubscript:@"depthDistanceThreshold"];
  }

  if (self->_enable_packaged_products)
  {
    v12 = [MEMORY[0x1E696AD98] numberWithBool:{-[VISObjectConsolidationConfig enable_packaged_products](self, "enable_packaged_products")}];
    [dictionary setObject:v12 forKeyedSubscript:@"enablePackagedProducts"];
  }

  if (self->_enable_text_from_object_detection)
  {
    v13 = [MEMORY[0x1E696AD98] numberWithBool:{-[VISObjectConsolidationConfig enable_text_from_object_detection](self, "enable_text_from_object_detection")}];
    [dictionary setObject:v13 forKeyedSubscript:@"enableTextFromObjectDetection"];
  }

  if (self->_enable_visual_distance)
  {
    v14 = [MEMORY[0x1E696AD98] numberWithBool:{-[VISObjectConsolidationConfig enable_visual_distance](self, "enable_visual_distance")}];
    [dictionary setObject:v14 forKeyedSubscript:@"enableVisualDistance"];
  }

  if (self->_frame_object_iou_threshold != 0.0)
  {
    v15 = MEMORY[0x1E696AD98];
    [(VISObjectConsolidationConfig *)self frame_object_iou_threshold];
    v16 = [v15 numberWithFloat:?];
    [dictionary setObject:v16 forKeyedSubscript:@"frameObjectIouThreshold"];
  }

  if (self->_label_prob_dist_threshold != 0.0)
  {
    v17 = MEMORY[0x1E696AD98];
    [(VISObjectConsolidationConfig *)self label_prob_dist_threshold];
    v18 = [v17 numberWithFloat:?];
    [dictionary setObject:v18 forKeyedSubscript:@"labelProbDistThreshold"];
  }

  if (self->_minimal_adaptive_object_distance_threshold != 0.0)
  {
    v19 = MEMORY[0x1E696AD98];
    [(VISObjectConsolidationConfig *)self minimal_adaptive_object_distance_threshold];
    v20 = [v19 numberWithFloat:?];
    [dictionary setObject:v20 forKeyedSubscript:@"minimalAdaptiveObjectDistanceThreshold"];
  }

  if (self->_nearest_object_distance_threshold != 0.0)
  {
    v21 = MEMORY[0x1E696AD98];
    [(VISObjectConsolidationConfig *)self nearest_object_distance_threshold];
    v22 = [v21 numberWithFloat:?];
    [dictionary setObject:v22 forKeyedSubscript:@"nearestObjectDistanceThreshold"];
  }

  if (self->_nearest_object_iou_threshold != 0.0)
  {
    v23 = MEMORY[0x1E696AD98];
    [(VISObjectConsolidationConfig *)self nearest_object_iou_threshold];
    v24 = [v23 numberWithFloat:?];
    [dictionary setObject:v24 forKeyedSubscript:@"nearestObjectIouThreshold"];
  }

  if (self->_normal_decay_rate != 0.0)
  {
    v25 = MEMORY[0x1E696AD98];
    [(VISObjectConsolidationConfig *)self normal_decay_rate];
    v26 = [v25 numberWithFloat:?];
    [dictionary setObject:v26 forKeyedSubscript:@"normalDecayRate"];
  }

  if (self->_object_distance_update_threshold != 0.0)
  {
    v27 = MEMORY[0x1E696AD98];
    [(VISObjectConsolidationConfig *)self object_distance_update_threshold];
    v28 = [v27 numberWithFloat:?];
    [dictionary setObject:v28 forKeyedSubscript:@"objectDistanceUpdateThreshold"];
  }

  if (self->_object_iou_update_threshold != 0.0)
  {
    v29 = MEMORY[0x1E696AD98];
    [(VISObjectConsolidationConfig *)self object_iou_update_threshold];
    v30 = [v29 numberWithFloat:?];
    [dictionary setObject:v30 forKeyedSubscript:@"objectIouUpdateThreshold"];
  }

  if (self->_pixel_distance_threshold != 0.0)
  {
    v31 = MEMORY[0x1E696AD98];
    [(VISObjectConsolidationConfig *)self pixel_distance_threshold];
    v32 = [v31 numberWithFloat:?];
    [dictionary setObject:v32 forKeyedSubscript:@"pixelDistanceThreshold"];
  }

  if (self->_reticle_padding != 0.0)
  {
    v33 = MEMORY[0x1E696AD98];
    [(VISObjectConsolidationConfig *)self reticle_padding];
    v34 = [v33 numberWithFloat:?];
    [dictionary setObject:v34 forKeyedSubscript:@"reticlePadding"];
  }

  if (self->_sharpness_threshold != 0.0)
  {
    v35 = MEMORY[0x1E696AD98];
    [(VISObjectConsolidationConfig *)self sharpness_threshold];
    v36 = [v35 numberWithFloat:?];
    [dictionary setObject:v36 forKeyedSubscript:@"sharpnessThreshold"];
  }

  if (self->_tracked_decay_rate != 0.0)
  {
    v37 = MEMORY[0x1E696AD98];
    [(VISObjectConsolidationConfig *)self tracked_decay_rate];
    v38 = [v37 numberWithFloat:?];
    [dictionary setObject:v38 forKeyedSubscript:@"trackedDecayRate"];
  }

  return dictionary;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(VISObjectConsolidationConfig *)self dictionaryRepresentation];
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

- (VISObjectConsolidationConfig)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(VISObjectConsolidationConfig *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (VISObjectConsolidationConfig)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v44.receiver = self;
  v44.super_class = VISObjectConsolidationConfig;
  v5 = [(VISObjectConsolidationConfig *)&v44 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"frameObjectIouThreshold"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v6 floatValue];
      [(VISObjectConsolidationConfig *)v5 setFrame_object_iou_threshold:?];
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"enablePackagedProducts"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[VISObjectConsolidationConfig setEnable_packaged_products:](v5, "setEnable_packaged_products:", [v7 BOOLValue]);
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"enableTextFromObjectDetection"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[VISObjectConsolidationConfig setEnable_text_from_object_detection:](v5, "setEnable_text_from_object_detection:", [v8 BOOLValue]);
    }

    v33 = v8;
    v9 = [dictionaryCopy objectForKeyedSubscript:@"nearestObjectDistanceThreshold"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v9 floatValue];
      [(VISObjectConsolidationConfig *)v5 setNearest_object_distance_threshold:?];
    }

    v37 = v9;
    v10 = [dictionaryCopy objectForKeyedSubscript:@"objectDistanceUpdateThreshold"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v10 floatValue];
      [(VISObjectConsolidationConfig *)v5 setObject_distance_update_threshold:?];
    }

    v11 = v7;
    v12 = [dictionaryCopy objectForKeyedSubscript:@"adaptiveObjectDistanceThresholdRatio"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v12 floatValue];
      [(VISObjectConsolidationConfig *)v5 setAdaptive_object_distance_threshold_ratio:?];
    }

    v13 = v6;
    v14 = [dictionaryCopy objectForKeyedSubscript:@"minimalAdaptiveObjectDistanceThreshold"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v14 floatValue];
      [(VISObjectConsolidationConfig *)v5 setMinimal_adaptive_object_distance_threshold:?];
    }

    v15 = [dictionaryCopy objectForKeyedSubscript:@"nearestObjectIouThreshold"];
    objc_opt_class();
    v43 = v15;
    if (objc_opt_isKindOfClass())
    {
      [v15 floatValue];
      [(VISObjectConsolidationConfig *)v5 setNearest_object_iou_threshold:?];
    }

    v16 = [dictionaryCopy objectForKeyedSubscript:@"objectIouUpdateThreshold"];
    objc_opt_class();
    v42 = v16;
    v17 = v13;
    if (objc_opt_isKindOfClass())
    {
      [v42 floatValue];
      [(VISObjectConsolidationConfig *)v5 setObject_iou_update_threshold:?];
    }

    v18 = [dictionaryCopy objectForKeyedSubscript:@"labelProbDistThreshold"];
    objc_opt_class();
    v41 = v18;
    v19 = v11;
    if (objc_opt_isKindOfClass())
    {
      [v41 floatValue];
      [(VISObjectConsolidationConfig *)v5 setLabel_prob_dist_threshold:?];
    }

    v20 = [dictionaryCopy objectForKeyedSubscript:@"sharpnessThreshold"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v20 floatValue];
      [(VISObjectConsolidationConfig *)v5 setSharpness_threshold:?];
    }

    v21 = [dictionaryCopy objectForKeyedSubscript:@"enableVisualDistance"];
    objc_opt_class();
    v40 = v21;
    if (objc_opt_isKindOfClass())
    {
      -[VISObjectConsolidationConfig setEnable_visual_distance:](v5, "setEnable_visual_distance:", [v21 BOOLValue]);
    }

    v36 = v10;
    v22 = [dictionaryCopy objectForKeyedSubscript:@"trackedDecayRate"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v22 floatValue];
      [(VISObjectConsolidationConfig *)v5 setTracked_decay_rate:?];
    }

    v35 = v12;
    v23 = [dictionaryCopy objectForKeyedSubscript:@"boundaryObjectPaddingThreshold"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v23 floatValue];
      [(VISObjectConsolidationConfig *)v5 setBoundary_object_padding_threshold:?];
    }

    v34 = v14;
    v24 = [dictionaryCopy objectForKeyedSubscript:@"boundaryObjectSizeThreshold"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v24 floatValue];
      [(VISObjectConsolidationConfig *)v5 setBoundary_object_size_threshold:?];
    }

    v39 = v17;
    v25 = [dictionaryCopy objectForKeyedSubscript:@"normalDecayRate"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v25 floatValue];
      [(VISObjectConsolidationConfig *)v5 setNormal_decay_rate:?];
    }

    v38 = v19;
    v26 = [dictionaryCopy objectForKeyedSubscript:{@"depthDistanceThreshold", v22}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v26 floatValue];
      [(VISObjectConsolidationConfig *)v5 setDepth_distance_threshold:?];
    }

    v27 = v20;
    v28 = [dictionaryCopy objectForKeyedSubscript:@"reticlePadding"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v28 floatValue];
      [(VISObjectConsolidationConfig *)v5 setReticle_padding:?];
    }

    v29 = [dictionaryCopy objectForKeyedSubscript:@"pixelDistanceThreshold"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v29 floatValue];
      [(VISObjectConsolidationConfig *)v5 setPixel_distance_threshold:?];
    }

    v30 = v5;
  }

  return v5;
}

@end