@interface PRRoseSolution
- (BOOL)isEqual:(id)a3;
- (PRRoseSolution)initWithCoder:(id)a3;
- (PRRoseSolution)initWithVariant:(int64_t)a3 macAddr:(unint64_t)a4 machAbsTime_sec:(double)a5 machContTimeValid:(BOOL)a6 machContTime_sec:(double)a7 range_m:(double)a8 rangeUnc_m:(double)a9 azValid:(BOOL)a10 elValid:(BOOL)a11 az_deg:(double)a12 el_deg:(double)a13 azUnc_deg:(double)a14 elUnc_deg:(double)a15 fovConfidence:(double)a16 soiRssiValid:(BOOL)a17 soiRssi_dBm:(double)a18 antennaType:(int64_t)a19 prevSolutionIsBad:(BOOL)a20 trackScoreValid:(BOOL)a21 trackScore:(double)a22 sweepAngleValid:(BOOL)a23 sweepAngle_deg:(double)a24 multipathProbabilityValid:(BOOL)a25 multipathProbability:(double)a26;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PRRoseSolution

- (PRRoseSolution)initWithVariant:(int64_t)a3 macAddr:(unint64_t)a4 machAbsTime_sec:(double)a5 machContTimeValid:(BOOL)a6 machContTime_sec:(double)a7 range_m:(double)a8 rangeUnc_m:(double)a9 azValid:(BOOL)a10 elValid:(BOOL)a11 az_deg:(double)a12 el_deg:(double)a13 azUnc_deg:(double)a14 elUnc_deg:(double)a15 fovConfidence:(double)a16 soiRssiValid:(BOOL)a17 soiRssi_dBm:(double)a18 antennaType:(int64_t)a19 prevSolutionIsBad:(BOOL)a20 trackScoreValid:(BOOL)a21 trackScore:(double)a22 sweepAngleValid:(BOOL)a23 sweepAngle_deg:(double)a24 multipathProbabilityValid:(BOOL)a25 multipathProbability:(double)a26
{
  v26 = a17;
  v27 = a11;
  v28 = a10;
  v29 = a6;
  v50.receiver = self;
  v50.super_class = PRRoseSolution;
  result = [(PRRoseSolution *)&v50 init];
  if (result)
  {
    result->_variant = a3;
    result->_mac_addr = a4;
    result->_mach_continuous_time_valid = v29;
    if (v29)
    {
      v45 = a7;
    }

    else
    {
      v45 = 0.0;
    }

    result->_mach_absolute_time_sec = a5;
    result->_mach_continuous_time_sec = v45;
    result->_range_m = a8;
    result->_range_unc_m = a9;
    result->_az_valid = v28;
    result->_el_valid = v27;
    if (v28)
    {
      v46 = a12;
    }

    else
    {
      v46 = 0.0;
    }

    if (v28)
    {
      v47 = a14;
    }

    else
    {
      v47 = 0.0;
    }

    if (v27)
    {
      v48 = a13;
    }

    else
    {
      v48 = 0.0;
    }

    result->_az_deg = v46;
    result->_el_deg = v48;
    if (v27)
    {
      v49 = a15;
    }

    else
    {
      v49 = 0.0;
    }

    result->_az_unc_deg = v47;
    result->_el_unc_deg = v49;
    result->_soi_rssi_valid = v26;
    if (!v26)
    {
      a18 = 0.0;
    }

    result->_fov_confidence = a16;
    result->_soi_rssi_dbm = a18;
    result->_antenna_type = a19;
    result->_previous_solution_is_bad = a20;
    result->_track_score_valid = a21;
    if (!a21)
    {
      a22 = 0.0;
    }

    result->_sweep_angle_valid = a23;
    if (!a23)
    {
      a24 = 0.0;
    }

    result->_track_score = a22;
    result->_sweep_angle_deg = a24;
    result->_multipath_probability_valid = a25;
    if (!a25)
    {
      a26 = 0.0;
    }

    result->_multipath_probability = a26;
  }

  return result;
}

- (PRRoseSolution)initWithCoder:(id)a3
{
  v3 = a3;
  v43 = [v3 decodeIntegerForKey:@"variant"];
  v44 = [v3 decodeInt64ForKey:@"macAddr"];
  [v3 decodeDoubleForKey:@"machAbsTime"];
  v42 = v4;
  v5 = [v3 decodeBoolForKey:@"machContTimeValid"];
  [v3 decodeDoubleForKey:@"machContTime"];
  v41 = v6;
  [v3 decodeDoubleForKey:@"range"];
  v40 = v7;
  [v3 decodeDoubleForKey:@"rangeUnc"];
  v39 = v8;
  v9 = [v3 decodeBoolForKey:@"azValid"];
  v10 = [v3 decodeBoolForKey:@"elValid"];
  [v3 decodeDoubleForKey:@"az"];
  v38 = v11;
  [v3 decodeDoubleForKey:@"el"];
  v13 = v12;
  [v3 decodeDoubleForKey:@"azUnc"];
  v15 = v14;
  [v3 decodeDoubleForKey:@"elUnc"];
  v17 = v16;
  [v3 decodeDoubleForKey:@"fovConfidence"];
  v19 = v18;
  v20 = [v3 decodeBoolForKey:@"soiRssiValid"];
  [v3 decodeDoubleForKey:@"soiRssi"];
  v22 = v21;
  v23 = [v3 decodeIntegerForKey:@"antennaType"];
  v24 = [v3 decodeBoolForKey:@"prevSolutionIsBad"];
  v25 = [v3 decodeBoolForKey:@"trackScoreValid"];
  [v3 decodeDoubleForKey:@"trackScore"];
  v27 = v26;
  v28 = [v3 decodeBoolForKey:@"sweepAngleValid"];
  [v3 decodeDoubleForKey:@"sweepAngleDeg"];
  v30 = v29;
  v31 = [v3 decodeBoolForKey:@"multipathProbabilityValid"];
  [v3 decodeDoubleForKey:@"multipathProbability"];
  v33 = v32;

  LOBYTE(v37) = v31;
  LOBYTE(v36) = v28;
  BYTE1(v35) = v25;
  LOBYTE(v35) = v24;
  return [(PRRoseSolution *)self initWithVariant:v43 macAddr:v44 machAbsTime_sec:v5 machContTimeValid:v9 machContTime_sec:v10 range_m:v20 rangeUnc_m:v42 azValid:v41 elValid:v40 az_deg:v39 el_deg:v38 azUnc_deg:v13 elUnc_deg:v15 fovConfidence:v17 soiRssiValid:v19 soiRssi_dBm:v22 antennaType:v23 prevSolutionIsBad:v35 trackScoreValid:v27 trackScore:v36 sweepAngleValid:v30 sweepAngle_deg:v37 multipathProbabilityValid:v33 multipathProbability:?];
}

- (void)encodeWithCoder:(id)a3
{
  variant = self->_variant;
  v5 = a3;
  [v5 encodeInteger:variant forKey:@"variant"];
  [v5 encodeInt64:self->_mac_addr forKey:@"macAddr"];
  [v5 encodeDouble:@"machAbsTime" forKey:self->_mach_absolute_time_sec];
  [v5 encodeBool:self->_mach_continuous_time_valid forKey:@"machContTimeValid"];
  [v5 encodeDouble:@"machContTime" forKey:self->_mach_continuous_time_sec];
  [v5 encodeDouble:@"range" forKey:self->_range_m];
  [v5 encodeDouble:@"rangeUnc" forKey:self->_range_unc_m];
  [v5 encodeBool:self->_az_valid forKey:@"azValid"];
  [v5 encodeBool:self->_el_valid forKey:@"elValid"];
  [v5 encodeDouble:@"az" forKey:self->_az_deg];
  [v5 encodeDouble:@"el" forKey:self->_el_deg];
  [v5 encodeDouble:@"azUnc" forKey:self->_az_unc_deg];
  [v5 encodeDouble:@"elUnc" forKey:self->_el_unc_deg];
  [v5 encodeDouble:@"fovConfidence" forKey:self->_fov_confidence];
  [v5 encodeBool:self->_soi_rssi_valid forKey:@"soiRssiValid"];
  [v5 encodeDouble:@"soiRssi" forKey:self->_soi_rssi_dbm];
  [v5 encodeInteger:self->_antenna_type forKey:@"antennaType"];
  [v5 encodeBool:self->_previous_solution_is_bad forKey:@"prevSolutionIsBad"];
  [v5 encodeBool:self->_track_score_valid forKey:@"trackScoreValid"];
  [v5 encodeDouble:@"trackScore" forKey:self->_track_score];
  [v5 encodeBool:self->_sweep_angle_valid forKey:@"sweepAngleValid"];
  [v5 encodeDouble:@"sweepAngleDeg" forKey:self->_sweep_angle_deg];
  [v5 encodeBool:self->_multipath_probability_valid forKey:@"multipathProbabilityValid"];
  [v5 encodeDouble:@"multipathProbability" forKey:self->_multipath_probability];
}

- (id)copyWithZone:(_NSZone *)a3
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(PRRoseSolution *)self variant];
    if (v6 != [v5 variant])
    {
      goto LABEL_25;
    }

    v7 = [(PRRoseSolution *)self mac_addr];
    if (v7 != [v5 mac_addr])
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

    v11 = [(PRRoseSolution *)self mach_continuous_time_valid];
    if (v11 != [v5 mach_continuous_time_valid])
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

    v21 = [(PRRoseSolution *)self az_valid];
    if (v21 != [v5 az_valid])
    {
      goto LABEL_25;
    }

    v22 = [(PRRoseSolution *)self el_valid];
    if (v22 != [v5 el_valid])
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

    v38 = [(PRRoseSolution *)self soi_rssi_valid];
    if (v38 != [v5 soi_rssi_valid])
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

    v42 = [(PRRoseSolution *)self antenna_type];
    if (v42 != [v5 antenna_type])
    {
      goto LABEL_25;
    }

    v43 = [(PRRoseSolution *)self previous_solution_is_bad];
    if (v43 != [v5 previous_solution_is_bad])
    {
      goto LABEL_25;
    }

    v44 = [(PRRoseSolution *)self track_score_valid];
    if (v44 != [v5 track_score_valid])
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

    v48 = [(PRRoseSolution *)self sweep_angle_valid];
    if (v48 == [v5 sweep_angle_valid] && (-[PRRoseSolution sweep_angle_deg](self, "sweep_angle_deg"), v50 = v49, objc_msgSend(v5, "sweep_angle_deg"), v50 == v51) && (v52 = -[PRRoseSolution multipath_probability_valid](self, "multipath_probability_valid"), v52 == objc_msgSend(v5, "multipath_probability_valid")))
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