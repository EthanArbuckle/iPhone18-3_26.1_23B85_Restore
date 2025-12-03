@interface PRRoseSolution
- (BOOL)isEqual:(id)equal;
- (PRRoseSolution)initWithCoder:(id)coder;
- (PRRoseSolution)initWithVariant:(int64_t)variant macAddr:(unint64_t)addr machAbsTime_sec:(double)time_sec machContTimeValid:(BOOL)valid machContTime_sec:(double)contTime_sec range_m:(double)range_m rangeUnc_m:(double)unc_m azValid:(BOOL)self0 elValid:(BOOL)self1 az_deg:(double)self2 el_deg:(double)self3 azUnc_deg:(double)self4 elUnc_deg:(double)self5 fovConfidence:(double)self6 soiRssiValid:(BOOL)self7 soiRssi_dBm:(double)self8 antennaType:(int64_t)self9 prevSolutionIsBad:(BOOL)bad trackScoreValid:(BOOL)scoreValid trackScore:(double)score sweepAngleValid:(BOOL)angleValid sweepAngle_deg:(double)angle_deg multipathProbabilityValid:(BOOL)probabilityValid multipathProbability:(double)probability;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PRRoseSolution

- (PRRoseSolution)initWithVariant:(int64_t)variant macAddr:(unint64_t)addr machAbsTime_sec:(double)time_sec machContTimeValid:(BOOL)valid machContTime_sec:(double)contTime_sec range_m:(double)range_m rangeUnc_m:(double)unc_m azValid:(BOOL)self0 elValid:(BOOL)self1 az_deg:(double)self2 el_deg:(double)self3 azUnc_deg:(double)self4 elUnc_deg:(double)self5 fovConfidence:(double)self6 soiRssiValid:(BOOL)self7 soiRssi_dBm:(double)self8 antennaType:(int64_t)self9 prevSolutionIsBad:(BOOL)bad trackScoreValid:(BOOL)scoreValid trackScore:(double)score sweepAngleValid:(BOOL)angleValid sweepAngle_deg:(double)angle_deg multipathProbabilityValid:(BOOL)probabilityValid multipathProbability:(double)probability
{
  rssiValidCopy = rssiValid;
  elValidCopy = elValid;
  azValidCopy = azValid;
  validCopy = valid;
  v50.receiver = self;
  v50.super_class = PRRoseSolution;
  result = [(PRRoseSolution *)&v50 init];
  if (result)
  {
    result->_variant = variant;
    result->_mac_addr = addr;
    result->_mach_continuous_time_valid = validCopy;
    if (validCopy)
    {
      contTime_secCopy = contTime_sec;
    }

    else
    {
      contTime_secCopy = 0.0;
    }

    result->_mach_absolute_time_sec = time_sec;
    result->_mach_continuous_time_sec = contTime_secCopy;
    result->_range_m = range_m;
    result->_range_unc_m = unc_m;
    result->_az_valid = azValidCopy;
    result->_el_valid = elValidCopy;
    if (azValidCopy)
    {
      az_degCopy = az_deg;
    }

    else
    {
      az_degCopy = 0.0;
    }

    if (azValidCopy)
    {
      unc_degCopy = unc_deg;
    }

    else
    {
      unc_degCopy = 0.0;
    }

    if (elValidCopy)
    {
      el_degCopy = el_deg;
    }

    else
    {
      el_degCopy = 0.0;
    }

    result->_az_deg = az_degCopy;
    result->_el_deg = el_degCopy;
    if (elValidCopy)
    {
      elUnc_degCopy = elUnc_deg;
    }

    else
    {
      elUnc_degCopy = 0.0;
    }

    result->_az_unc_deg = unc_degCopy;
    result->_el_unc_deg = elUnc_degCopy;
    result->_soi_rssi_valid = rssiValidCopy;
    if (!rssiValidCopy)
    {
      bm = 0.0;
    }

    result->_fov_confidence = confidence;
    result->_soi_rssi_dbm = bm;
    result->_antenna_type = type;
    result->_previous_solution_is_bad = bad;
    result->_track_score_valid = scoreValid;
    if (!scoreValid)
    {
      score = 0.0;
    }

    result->_sweep_angle_valid = angleValid;
    if (!angleValid)
    {
      angle_deg = 0.0;
    }

    result->_track_score = score;
    result->_sweep_angle_deg = angle_deg;
    result->_multipath_probability_valid = probabilityValid;
    if (!probabilityValid)
    {
      probability = 0.0;
    }

    result->_multipath_probability = probability;
  }

  return result;
}

- (PRRoseSolution)initWithCoder:(id)coder
{
  coderCopy = coder;
  v43 = [coderCopy decodeIntegerForKey:@"variant"];
  v44 = [coderCopy decodeInt64ForKey:@"macAddr"];
  [coderCopy decodeDoubleForKey:@"machAbsTime"];
  v42 = v4;
  v5 = [coderCopy decodeBoolForKey:@"machContTimeValid"];
  [coderCopy decodeDoubleForKey:@"machContTime"];
  v41 = v6;
  [coderCopy decodeDoubleForKey:@"range"];
  v40 = v7;
  [coderCopy decodeDoubleForKey:@"rangeUnc"];
  v39 = v8;
  v9 = [coderCopy decodeBoolForKey:@"azValid"];
  v10 = [coderCopy decodeBoolForKey:@"elValid"];
  [coderCopy decodeDoubleForKey:@"az"];
  v38 = v11;
  [coderCopy decodeDoubleForKey:@"el"];
  v13 = v12;
  [coderCopy decodeDoubleForKey:@"azUnc"];
  v15 = v14;
  [coderCopy decodeDoubleForKey:@"elUnc"];
  v17 = v16;
  [coderCopy decodeDoubleForKey:@"fovConfidence"];
  v19 = v18;
  v20 = [coderCopy decodeBoolForKey:@"soiRssiValid"];
  [coderCopy decodeDoubleForKey:@"soiRssi"];
  v22 = v21;
  v23 = [coderCopy decodeIntegerForKey:@"antennaType"];
  v24 = [coderCopy decodeBoolForKey:@"prevSolutionIsBad"];
  v25 = [coderCopy decodeBoolForKey:@"trackScoreValid"];
  [coderCopy decodeDoubleForKey:@"trackScore"];
  v27 = v26;
  v28 = [coderCopy decodeBoolForKey:@"sweepAngleValid"];
  [coderCopy decodeDoubleForKey:@"sweepAngleDeg"];
  v30 = v29;
  v31 = [coderCopy decodeBoolForKey:@"multipathProbabilityValid"];
  [coderCopy decodeDoubleForKey:@"multipathProbability"];
  v33 = v32;

  LOBYTE(v37) = v31;
  LOBYTE(v36) = v28;
  BYTE1(v35) = v25;
  LOBYTE(v35) = v24;
  return [(PRRoseSolution *)self initWithVariant:v43 macAddr:v44 machAbsTime_sec:v5 machContTimeValid:v9 machContTime_sec:v10 range_m:v20 rangeUnc_m:v42 azValid:v41 elValid:v40 az_deg:v39 el_deg:v38 azUnc_deg:v13 elUnc_deg:v15 fovConfidence:v17 soiRssiValid:v19 soiRssi_dBm:v22 antennaType:v23 prevSolutionIsBad:v35 trackScoreValid:v27 trackScore:v36 sweepAngleValid:v30 sweepAngle_deg:v37 multipathProbabilityValid:v33 multipathProbability:?];
}

- (void)encodeWithCoder:(id)coder
{
  variant = self->_variant;
  coderCopy = coder;
  [coderCopy encodeInteger:variant forKey:@"variant"];
  [coderCopy encodeInt64:self->_mac_addr forKey:@"macAddr"];
  [coderCopy encodeDouble:@"machAbsTime" forKey:self->_mach_absolute_time_sec];
  [coderCopy encodeBool:self->_mach_continuous_time_valid forKey:@"machContTimeValid"];
  [coderCopy encodeDouble:@"machContTime" forKey:self->_mach_continuous_time_sec];
  [coderCopy encodeDouble:@"range" forKey:self->_range_m];
  [coderCopy encodeDouble:@"rangeUnc" forKey:self->_range_unc_m];
  [coderCopy encodeBool:self->_az_valid forKey:@"azValid"];
  [coderCopy encodeBool:self->_el_valid forKey:@"elValid"];
  [coderCopy encodeDouble:@"az" forKey:self->_az_deg];
  [coderCopy encodeDouble:@"el" forKey:self->_el_deg];
  [coderCopy encodeDouble:@"azUnc" forKey:self->_az_unc_deg];
  [coderCopy encodeDouble:@"elUnc" forKey:self->_el_unc_deg];
  [coderCopy encodeDouble:@"fovConfidence" forKey:self->_fov_confidence];
  [coderCopy encodeBool:self->_soi_rssi_valid forKey:@"soiRssiValid"];
  [coderCopy encodeDouble:@"soiRssi" forKey:self->_soi_rssi_dbm];
  [coderCopy encodeInteger:self->_antenna_type forKey:@"antennaType"];
  [coderCopy encodeBool:self->_previous_solution_is_bad forKey:@"prevSolutionIsBad"];
  [coderCopy encodeBool:self->_track_score_valid forKey:@"trackScoreValid"];
  [coderCopy encodeDouble:@"trackScore" forKey:self->_track_score];
  [coderCopy encodeBool:self->_sweep_angle_valid forKey:@"sweepAngleValid"];
  [coderCopy encodeDouble:@"sweepAngleDeg" forKey:self->_sweep_angle_deg];
  [coderCopy encodeBool:self->_multipath_probability_valid forKey:@"multipathProbabilityValid"];
  [coderCopy encodeDouble:@"multipathProbability" forKey:self->_multipath_probability];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [PRRoseSolution alloc];
  LOBYTE(v8) = self->_multipath_probability_valid;
  LOBYTE(v7) = self->_sweep_angle_valid;
  LOWORD(v6) = *&self->_previous_solution_is_bad;
  return [(PRRoseSolution *)v4 initWithVariant:self->_variant macAddr:self->_mac_addr machAbsTime_sec:self->_mach_continuous_time_valid machContTimeValid:self->_az_valid machContTime_sec:self->_el_valid range_m:self->_soi_rssi_valid rangeUnc_m:self->_mach_absolute_time_sec azValid:self->_mach_continuous_time_sec elValid:self->_range_m az_deg:self->_range_unc_m el_deg:self->_az_deg azUnc_deg:self->_el_deg elUnc_deg:self->_az_unc_deg fovConfidence:self->_el_unc_deg soiRssiValid:*&self->_fov_confidence soiRssi_dBm:*&self->_soi_rssi_dbm antennaType:self->_antenna_type prevSolutionIsBad:v6 trackScoreValid:*&self->_track_score trackScore:v7 sweepAngleValid:*&self->_sweep_angle_deg sweepAngle_deg:v8 multipathProbabilityValid:*&self->_multipath_probability multipathProbability:?];
}

- (id)description
{
  variant = self->_variant;
  if (variant > 2)
  {
    v5 = @"InvalidEnumValue";
  }

  else
  {
    v5 = off_2788F3BA8[variant];
  }

  antenna_type = self->_antenna_type;
  if (antenna_type > 4)
  {
    v7 = @"InvalidEnumValue";
  }

  else
  {
    v7 = off_2788F3BC0[antenna_type];
  }

  return [MEMORY[0x277CCACA8] stringWithFormat:@"RoseSolution: variant: %@, mac_addr: 0x%016llx, mach_abs_time_sec: %.6f, mach_cont_time_valid: %d, mach_cont_time_sec: %.6f, range_m: %.3f, range_unc_m: %.3f, az_valid: %d, el_valid: %d, az_deg: %.3f, el_deg: %.3f, az_unc_deg: %.3f, el_unc_deg: %.3f, fov_confidence: %.3f, soi_rssi_valid: %d, soi_rssi_dbm: %.3f, antenna_type: %@, previous_solution_is_bad: %d, track_score_valid: %d, track_score: %.1f, sweep_angle_valid: %d, sweep_angle_deg: %.1f, multipath_probability_valid: %d, multipath_probability: %.2f", v5, self->_mac_addr, *&self->_mach_absolute_time_sec, self->_mach_continuous_time_valid, *&self->_mach_continuous_time_sec, *&self->_range_m, *&self->_range_unc_m, self->_az_valid, self->_el_valid, *&self->_az_deg, *&self->_el_deg, *&self->_az_unc_deg, *&self->_el_unc_deg, *&self->_fov_confidence, self->_soi_rssi_valid, *&self->_soi_rssi_dbm, v7, self->_previous_solution_is_bad, self->_track_score_valid, *&self->_track_score, self->_sweep_angle_valid, *&self->_sweep_angle_deg, self->_multipath_probability_valid, *&self->_multipath_probability, v2, v3];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    variant = [(PRRoseSolution *)self variant];
    if (variant != [v5 variant])
    {
      goto LABEL_25;
    }

    mac_addr = [(PRRoseSolution *)self mac_addr];
    if (mac_addr != [v5 mac_addr])
    {
      goto LABEL_25;
    }

    [(PRRoseSolution *)self mach_absolute_time_sec];
    v9 = v8;
    [v5 mach_absolute_time_sec];
    if (v9 != v10)
    {
      goto LABEL_25;
    }

    mach_continuous_time_valid = [(PRRoseSolution *)self mach_continuous_time_valid];
    if (mach_continuous_time_valid != [v5 mach_continuous_time_valid])
    {
      goto LABEL_25;
    }

    [(PRRoseSolution *)self mach_continuous_time_sec];
    v13 = v12;
    [v5 mach_continuous_time_sec];
    if (v13 != v14)
    {
      goto LABEL_25;
    }

    [(PRRoseSolution *)self range_m];
    v16 = v15;
    [v5 range_m];
    if (v16 != v17)
    {
      goto LABEL_25;
    }

    [(PRRoseSolution *)self range_unc_m];
    v19 = v18;
    [v5 range_unc_m];
    if (v19 != v20)
    {
      goto LABEL_25;
    }

    az_valid = [(PRRoseSolution *)self az_valid];
    if (az_valid != [v5 az_valid])
    {
      goto LABEL_25;
    }

    el_valid = [(PRRoseSolution *)self el_valid];
    if (el_valid != [v5 el_valid])
    {
      goto LABEL_25;
    }

    [(PRRoseSolution *)self az_deg];
    v24 = v23;
    [v5 az_deg];
    if (v24 != v25)
    {
      goto LABEL_25;
    }

    [(PRRoseSolution *)self el_deg];
    v27 = v26;
    [v5 el_deg];
    if (v27 != v28)
    {
      goto LABEL_25;
    }

    [(PRRoseSolution *)self az_unc_deg];
    v30 = v29;
    [v5 az_unc_deg];
    if (v30 != v31)
    {
      goto LABEL_25;
    }

    [(PRRoseSolution *)self el_unc_deg];
    v33 = v32;
    [v5 el_unc_deg];
    if (v33 != v34)
    {
      goto LABEL_25;
    }

    [(PRRoseSolution *)self fov_confidence];
    v36 = v35;
    [v5 fov_confidence];
    if (v36 != v37)
    {
      goto LABEL_25;
    }

    soi_rssi_valid = [(PRRoseSolution *)self soi_rssi_valid];
    if (soi_rssi_valid != [v5 soi_rssi_valid])
    {
      goto LABEL_25;
    }

    [(PRRoseSolution *)self soi_rssi_dbm];
    v40 = v39;
    [v5 soi_rssi_dbm];
    if (v40 != v41)
    {
      goto LABEL_25;
    }

    antenna_type = [(PRRoseSolution *)self antenna_type];
    if (antenna_type != [v5 antenna_type])
    {
      goto LABEL_25;
    }

    previous_solution_is_bad = [(PRRoseSolution *)self previous_solution_is_bad];
    if (previous_solution_is_bad != [v5 previous_solution_is_bad])
    {
      goto LABEL_25;
    }

    track_score_valid = [(PRRoseSolution *)self track_score_valid];
    if (track_score_valid != [v5 track_score_valid])
    {
      goto LABEL_25;
    }

    [(PRRoseSolution *)self track_score];
    v46 = v45;
    [v5 track_score];
    if (v46 != v47)
    {
      goto LABEL_25;
    }

    sweep_angle_valid = [(PRRoseSolution *)self sweep_angle_valid];
    if (sweep_angle_valid == [v5 sweep_angle_valid] && (-[PRRoseSolution sweep_angle_deg](self, "sweep_angle_deg"), v50 = v49, objc_msgSend(v5, "sweep_angle_deg"), v50 == v51) && (v52 = -[PRRoseSolution multipath_probability_valid](self, "multipath_probability_valid"), v52 == objc_msgSend(v5, "multipath_probability_valid")))
    {
      [(PRRoseSolution *)self multipath_probability];
      v56 = v55;
      [v5 multipath_probability];
      v53 = v56 == v57;
    }

    else
    {
LABEL_25:
      v53 = 0;
    }
  }

  else
  {
    v53 = 0;
  }

  return v53;
}

@end