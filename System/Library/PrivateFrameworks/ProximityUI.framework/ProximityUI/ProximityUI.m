RoseSyntheticApertureFiltering::PRRoseRangeFilter *RoseSyntheticApertureFiltering::PRRoseRangeFilter::PRRoseRangeFilter(RoseSyntheticApertureFiltering::PRRoseRangeFilter *this)
{
  *this = 0;
  *(this + 2) = 0;
  *(this + 1) = xmmword_261415A90;
  *(this + 4) = 0;
  v2 = this + 48;
  *(this + 9) = 0x100000003;
  *(this + 6) = &unk_2873C40E8;
  *(this + 56) = xmmword_261415AA0;
  *(this + 10) = this + 88;
  v3 = this + 112;
  *(this + 17) = 0x100000003;
  *(this + 14) = &unk_2873C40E8;
  *(this + 120) = xmmword_261415AA0;
  *(this + 18) = this + 152;
  v4 = this + 176;
  *(this + 25) = 0x100000003;
  *(this + 22) = &unk_2873C40E8;
  *(this + 184) = xmmword_261415AA0;
  *(this + 26) = this + 216;
  *(this + 15) = xmmword_261415AB0;
  *(this + 32) = 0xBFFBB67AE8584CAALL;
  v5 = (this + 264);
  v6 = erf(1.73205081);
  *v5 = 0u;
  v5[1] = 0u;
  *(this + 37) = 0;
  *(this + 38) = v6;
  v7 = 0;
  *(this + 39) = erf(-1.73205081);
  *(this + 360) = xmmword_261415B68;
  *(this + 376) = unk_261415B78;
  *(this + 44) = 0x3FC5555555555555;
  *(this + 20) = xmmword_261415B40;
  *(this + 21) = unk_261415B50;
  *(this + 49) = 0x3FC5555555555555;
  do
  {
    *cnmatrix::CNMatrixBase<double>::operator()(v3, v7) = 0;
    *cnmatrix::CNMatrixBase<double>::operator()(v4, v7) = 0;
    *cnmatrix::CNMatrixBase<double>::operator()(v2, v7++) = 0;
  }

  while (v7 != 3);
  v8 = os_log_create("com.apple.proximity", "RangeFilter");
  *(this + 5) = v8;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&dword_2613DF000, v8, OS_LOG_TYPE_DEFAULT, "PRRoseRangeFilter constructed", v10, 2u);
  }

  return this;
}

void sub_2613E0348(_Unwind_Exception *a1)
{
  *v3 = &unk_2873C4140;
  *v2 = &unk_2873C4140;
  *v1 = &unk_2873C4140;
  _Unwind_Resume(a1);
}

void RoseSyntheticApertureFiltering::PRRoseRangeFilter::addMeasurementWithVIO(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v59 = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 40);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *a2;
    v8 = *(a2 + 8);
    v9 = *(a2 + 16);
    v10 = *(a2 + 96);
    v11 = *(a2 + 104);
    v12 = *(a2 + 112);
    *buf = 134219264;
    v48 = v7;
    v49 = 2048;
    v50 = v8;
    v51 = 2048;
    v52 = v9;
    v53 = 2048;
    v54 = v10;
    v55 = 2048;
    v56 = v11;
    v57 = 2048;
    v58 = v12;
    _os_log_impl(&dword_2613DF000, v6, OS_LOG_TYPE_DEFAULT, "Measurement added with VIO: timestamp %3.2f s, range %3.2f m, uncertainty %3.2f m, position [%3.2f, %3.2f, %3.2f] m", buf, 0x3Eu);
  }

  v41 = 0x100000003;
  v40 = xmmword_261415AA0;
  v39 = &unk_2873C40E8;
  v42 = &v43;
  cnmatrix::FastResize<double>(&v39, 3, 1);
  cnmatrix::CNMatrixBase<double>::WriteValue(&v39, 0.0);
  v36 = 0x100000004;
  v34 = &unk_2873C4170;
  v35 = xmmword_261415AC0;
  v37 = &v38;
  cnmatrix::FastResize<double>(&v34, 4, 1);
  cnmatrix::CNMatrixBase<double>::WriteValue(&v34, 0.0);
  for (i = 0; i != 3; ++i)
  {
    v14 = a2 + 8 * i;
    v15 = *(v14 + 96);
    *cnmatrix::CNMatrixBase<double>::operator()(&v39, i) = v15;
    v16 = *(v14 + 120);
    *cnmatrix::CNMatrixBase<double>::operator()(&v34, i) = v16;
  }

  v17 = *(a2 + 144);
  *cnmatrix::CNMatrixBase<double>::operator()(&v34, 3u) = v17;
  RoseSyntheticApertureFiltering::quatn2rot(&v34, buf);
  v45 = 0x100000003;
  *&v44[8] = xmmword_261415AA0;
  *v44 = &unk_2873C40E8;
  v46[0] = &v46[1];
  cnmatrix::Multiply<double>(buf, a1 + 112, v44);
  v31 = 0x100000003;
  v29 = &unk_2873C40E8;
  v30 = xmmword_261415AA0;
  v32 = &v33;
  cnmatrix::Add<double>(&v39, v44, &v29);
  if (*a1)
  {
    v18 = *(a1 + 8);
    if (v18 == 1)
    {
      RoseSyntheticApertureFiltering::PRRoseRangeFilter::propagateStateWithPose(a1, &v29);
    }

    else if (!v18)
    {
      v19 = *(a1 + 40);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *v44 = 0;
        _os_log_impl(&dword_2613DF000, v19, OS_LOG_TYPE_DEFAULT, "Range filter transitioning from non-VIO to VIO mode", v44, 2u);
      }

      RoseSyntheticApertureFiltering::PRRoseRangeFilter::propagateStateWithTime(a1, *a2, 0);
      cnmatrix::CNMatrixBase<double>::operator=(a1 + 48, &v29);
    }

    RoseSyntheticApertureFiltering::PRRoseRangeFilter::measurementUpdate(a1, *(a2 + 8), *(a2 + 16), 0);
  }

  else
  {
    *(a1 + 16) = *(a2 + 8);
    cnmatrix::CNMatrixBase<double>::operator=(a1 + 48, &v29);
    *a1 = 1;
    v20 = *(a1 + 40);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = *(a1 + 16);
      v22 = *(a1 + 24);
      *v44 = 134218240;
      *&v44[4] = v21;
      *&v44[12] = 2048;
      *&v44[14] = v22;
      _os_log_impl(&dword_2613DF000, v20, OS_LOG_TYPE_DEFAULT, "Initializing range filter with VIO: range %f m, uncertainty %f m", v44, 0x16u);
    }
  }

  v23 = *a2;
  *(a1 + 8) = 1;
  *(a1 + 32) = v23;
  v24 = *(a1 + 40);
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    v25 = *(a1 + 16);
    v26 = *(a1 + 24);
    *v44 = 134218754;
    *&v44[4] = v23;
    *&v44[12] = 2048;
    *&v44[14] = v25;
    *&v44[22] = 2048;
    v45 = v26;
    LOWORD(v46[0]) = 2080;
    *(v46 + 2) = "YES";
    _os_log_impl(&dword_2613DF000, v24, OS_LOG_TYPE_DEFAULT, "Filter state after meas with VIO: timestamp %3.2f s, range %3.2f m, uncertainty %3.2f m, with VIO: %s", v44, 0x2Au);
  }

  v27 = *(a1 + 24);
  *a3 = *(a1 + 8);
  *(a3 + 16) = v27;
  *(a3 + 8) = fmax(*(a3 + 8), 0.0);
  v28 = *MEMORY[0x277D85DE8];
}

void RoseSyntheticApertureFiltering::PRRoseRangeFilter::propagateStateWithTime(RoseSyntheticApertureFiltering::PRRoseRangeFilter *this, double a2, int a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = *(this + 4);
  v5 = a2 - v4;
  if (!a3)
  {
    v5 = v5 * 0.0625;
  }

  v6 = sqrt(v5 + *(this + 3) * *(this + 3));
  *(this + 3) = v6;
  v7 = *(this + 5);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(this + 2);
    if (*(this + 2) == 1)
    {
      v9 = "YES";
    }

    else
    {
      v9 = "NO";
    }

    v11 = 134218754;
    v12 = v4;
    v13 = 2048;
    v14 = v8;
    v15 = 2048;
    v16 = v6;
    v17 = 2080;
    v18 = v9;
    _os_log_impl(&dword_2613DF000, v7, OS_LOG_TYPE_DEFAULT, "Filter state after propagation with time: timestamp %3.2f s, range %3.2f m, uncertainty %3.2f m, with VIO: %s", &v11, 0x2Au);
  }

  v10 = *MEMORY[0x277D85DE8];
}

void RoseSyntheticApertureFiltering::PRRoseRangeFilter::propagateStateWithPose(uint64_t a1, uint64_t a2)
{
  v36[309] = *MEMORY[0x277D85DE8];
  v21 = 0x100000003;
  v19 = &unk_2873C40E8;
  v20 = xmmword_261415AA0;
  v22 = &v23;
  cnmatrix::Subtract<double>(a2, a1 + 48, &v19);
  v31 = 0x100000003;
  v30 = xmmword_261415AA0;
  v29 = &unk_2873C40E8;
  v32 = &v33;
  v35 = 0x100000134;
  *&buf[8] = xmmword_261415AD0;
  *buf = &unk_2873C41B8;
  v36[0] = &v36[1];
  v26 = 0x100000003;
  v24 = &unk_2873C40E8;
  v25 = xmmword_261415AA0;
  v27 = &v28;
  cnmatrix::Norm<double>(&v19, &v29, buf, &v24, "2");
  v5 = v4;
  cnmatrix::CNMatrixBase<double>::operator=(a1 + 48, a2);
  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  if (v7 + v6 * -1.73205081 <= 0.0)
  {
    v14 = sqrt(v5 * 0.5 * (v5 * 0.5) + v6 * v6);
    *(a1 + 24) = v14;
  }

  else
  {
    v8 = 0;
    v9 = (a1 + 240);
    v10 = 0.0;
    do
    {
      v11 = sqrt(v5 * v5 + (v7 + v6 * *v9) * (v7 + v6 * *v9) + v5 * -2.0 * (v7 + v6 * *v9) * v9[5]);
      *&buf[v8] = v11;
      v10 = v10 + v9[10] * v11;
      ++v9;
      v8 += 8;
    }

    while (v8 != 40);
    v12 = 0;
    v13 = 0.0;
    do
    {
      v13 = v13 + *(a1 + 360 + v12) * (*&buf[v12] - v10) * (*&buf[v12] - v10);
      v12 += 8;
    }

    while (v12 != 40);
    v14 = sqrt(v13);
    *(a1 + 16) = v10;
    *(a1 + 24) = v14;
    v7 = v10;
  }

  v15 = *(a1 + 40);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = *(a1 + 32);
    if (*(a1 + 8) == 1)
    {
      v17 = "YES";
    }

    else
    {
      v17 = "NO";
    }

    *buf = 134218754;
    *&buf[4] = v16;
    *&buf[12] = 2048;
    *&buf[14] = v7;
    *&buf[22] = 2048;
    v35 = *&v14;
    LOWORD(v36[0]) = 2080;
    *(v36 + 2) = v17;
    _os_log_impl(&dword_2613DF000, v15, OS_LOG_TYPE_DEFAULT, "Filter state after propagation with pose: timestamp %3.2f s, range %3.2f m, uncertainty %3.2f m, with VIO: %s", buf, 0x2Au);
  }

  v18 = *MEMORY[0x277D85DE8];
}

void RoseSyntheticApertureFiltering::PRRoseRangeFilter::measurementUpdate(RoseSyntheticApertureFiltering::PRRoseRangeFilter *this, double a2, double a3, char a4)
{
  v28 = *MEMORY[0x277D85DE8];
  v7 = a3 * a3;
  v8 = *(this + 2);
  v9 = *(this + 3);
  v10 = a3 * a3 + v9 * v9;
  v11 = sqrt(v10);
  v12 = (a2 - v8) / v11;
  if ((a4 & 1) != 0 || v12 <= 6.0)
  {
    if ((a4 & 1) != 0 || v12 >= -6.0)
    {
      if (*(this + 1))
      {
        *(this + 1) = 0;
        v19 = *(this + 5);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v22) = 0;
          _os_log_impl(&dword_2613DF000, v19, OS_LOG_TYPE_DEFAULT, "Did not observe a second nLoS->LoS event after the first one - marked as a false event due to packet collision", &v22, 2u);
          v8 = *(this + 2);
          v9 = *(this + 3);
        }
      }

      *(this + 2) = (v7 * v8 + a2 * (v9 * v9)) / v10;
      *(this + 3) = v9 * a3 / v11;
    }

    else if (*(this + 1))
    {
      *(this + 1) = 0;
      v18 = *(this + 5);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v22 = 134218496;
        v23 = v8;
        v24 = 2048;
        v25 = a2;
        v26 = 2048;
        v27 = v12;
        _os_log_error_impl(&dword_2613DF000, v18, OS_LOG_TYPE_ERROR, "Second nLos->LoS event detected by the range filter: Previous range %f m, Current range %f m, Normalized change %f", &v22, 0x20u);
        v18 = *(this + 5);
      }

      *(this + 2) = a2;
      *(this + 3) = a3;
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v22 = 134218240;
        v23 = a2;
        v24 = 2048;
        v25 = a3;
        v15 = "Re-initializing range filter: range %f m, uncertainty %f m";
        v16 = v18;
        v17 = 22;
        goto LABEL_15;
      }
    }

    else
    {
      *(this + 1) = 1;
      v20 = *(this + 5);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v22 = 134218496;
        v23 = v8;
        v24 = 2048;
        v25 = a2;
        v26 = 2048;
        v27 = v12;
        _os_log_error_impl(&dword_2613DF000, v20, OS_LOG_TYPE_ERROR, "Possible nLos->LoS event detected by the range filter: Previous range %f m, Current range %f m, Normalized change %f - not acting yet", &v22, 0x20u);
      }
    }
  }

  else
  {
    v13 = *(this + 5);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v22 = 134218496;
      v23 = v8;
      v24 = 2048;
      v25 = a2;
      v26 = 2048;
      v27 = v12;
      _os_log_error_impl(&dword_2613DF000, v13, OS_LOG_TYPE_ERROR, "LoS->nLoS event detected by the range filter: Previous range %f m, Current range %f m, Normalized change %f", &v22, 0x20u);
    }

    if (*(this + 1) == 1)
    {
      *(this + 1) = 0;
      v14 = *(this + 5);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v22) = 0;
        v15 = "Did not observe a second nLoS->LoS event after the first one - marked as a false event due to packet collision";
        v16 = v14;
        v17 = 2;
LABEL_15:
        _os_log_impl(&dword_2613DF000, v16, OS_LOG_TYPE_DEFAULT, v15, &v22, v17);
      }
    }
  }

  v21 = *MEMORY[0x277D85DE8];
}

double RoseSyntheticApertureFiltering::PRRoseRangeFilter::getCurrentState@<D0>(RoseSyntheticApertureFiltering::PRRoseRangeFilter *this@<X0>, uint64_t a2@<X8>)
{
  v2 = *(this + 24);
  *a2 = *(this + 8);
  *(a2 + 16) = v2;
  result = fmax(*(a2 + 8), 0.0);
  *(a2 + 8) = result;
  return result;
}

void RoseSyntheticApertureFiltering::PRRoseRangeFilter::addMeasurementWithoutVIO(uint64_t a1@<X0>, double *a2@<X1>, int a3@<W2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v44 = *MEMORY[0x277D85DE8];
  v10 = *(a1 + 40);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = *a2;
    v12 = *(a2 + 1);
    v13 = *(a2 + 2);
    v14 = "YES";
    if (a3)
    {
      v15 = "YES";
    }

    else
    {
      v15 = "NO";
    }

    if (!a4)
    {
      v14 = "NO";
    }

    v34 = 134219010;
    v35 = v11;
    v36 = 2048;
    v37 = v12;
    v38 = 2048;
    v39 = v13;
    v40 = 2080;
    v41 = v15;
    v42 = 2080;
    v43 = v14;
    _os_log_impl(&dword_2613DF000, v10, OS_LOG_TYPE_DEFAULT, "Measurement added without VIO: timestamp %3.2f s, range %3.2f m, uncertainty %3.2f m, isCompanionMoving %s, isDeviceMoving %s", &v34, 0x34u);
  }

  if (*a1)
  {
    if (a3 & 1) != 0 || (a4)
    {
      RoseSyntheticApertureFiltering::PRRoseRangeFilter::propagateStateWithTime(a1, *a2, a3);
      v19 = a2[1];
      v20 = a2[2];
      v21 = a1;
      v22 = a3;
    }

    else
    {
      v16 = *(a1 + 40);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = a2[1];
        v18 = *(a2 + 2);
        v34 = 134218240;
        v35 = v17;
        v36 = 2048;
        v37 = v18;
        _os_log_impl(&dword_2613DF000, v16, OS_LOG_TYPE_DEFAULT, "Range filter update with stationary companion and device: range %f m, uncertainty %f m", &v34, 0x16u);
      }

      v19 = a2[1];
      v20 = a2[2];
      v21 = a1;
      v22 = 0;
    }

    RoseSyntheticApertureFiltering::PRRoseRangeFilter::measurementUpdate(v21, v19, v20, v22);
  }

  else
  {
    v23 = a2[1];
    *(a1 + 16) = v23;
    v24 = *(a2 + 2);
    *(a1 + 24) = v24;
    *a1 = 1;
    v25 = *(a1 + 40);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v34 = 134218240;
      v35 = v23;
      v36 = 2048;
      v37 = v24;
      _os_log_impl(&dword_2613DF000, v25, OS_LOG_TYPE_DEFAULT, "Initializing range filter without VIO: range %f m, uncertainty %f m", &v34, 0x16u);
    }
  }

  v27 = (a1 + 8);
  v26 = *(a1 + 8);
  *(a1 + 32) = *a2;
  v28 = *(a1 + 40);
  if (v26 == 1 && os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v34) = 0;
    _os_log_impl(&dword_2613DF000, v28, OS_LOG_TYPE_DEFAULT, "Range filter transitioning from VIO to non-VIO mode", &v34, 2u);
    v28 = *(a1 + 40);
  }

  *v27 = 0;
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    v30 = *(a1 + 24);
    v29 = *(a1 + 32);
    v31 = *(a1 + 16);
    v34 = 134218754;
    v35 = v29;
    v36 = 2048;
    v37 = v31;
    v38 = 2048;
    v39 = v30;
    v40 = 2080;
    v41 = "NO";
    _os_log_impl(&dword_2613DF000, v28, OS_LOG_TYPE_DEFAULT, "Filter state after meas without VIO: timestamp %3.2f s, range %3.2f m, uncertainty %3.2f m, with VIO: %s", &v34, 0x2Au);
  }

  v32 = *(a1 + 24);
  *a5 = *v27;
  *(a5 + 16) = v32;
  *(a5 + 8) = fmax(*(a5 + 8), 0.0);
  v33 = *MEMORY[0x277D85DE8];
}

void cnmatrix::CNMatrix<3u,1u,double>::TransposeDataFootprint(uint64_t a1, char *a2)
{
  v2 = *(a1 + 8);
  if (v2 >= 2)
  {
    v4 = *(a1 + 12);
    if (v4 >= 2)
    {
      if (!a2)
      {
        cnmatrix::CNMatrix<3u,1u,double>::TransposeDataFootprint();
      }

      v6 = v4 + v2 - *(a1 + 20);
      if (v6 <= 0)
      {
        cnmatrix::CNMatrix<3u,1u,double>::TransposeDataFootprint();
      }

      bzero(a2, *(a1 + 16));
      v7 = *(a1 + 16);
      if (v7 >= 3)
      {
        v8 = (v7 - 1);
        v9 = *(a1 + 32);
        v10 = 1;
        do
        {
          v11 = &a2[v10];
          if ((a2[v10] & 1) == 0)
          {
            v12 = *(v9 + 8 * v10);
            v13 = v10;
            do
            {
              v13 = v13 * v6 % v8;
              v14 = *(v9 + 8 * v13);
              *(v9 + 8 * v13) = v12;
              *v11 = 1;
              v11 = &a2[v13];
              v12 = v14;
            }

            while (!*v11);
          }

          ++v10;
        }

        while (v10 != v8);
      }
    }
  }
}

_DWORD *cnmatrix::FastResize<double>(_DWORD *result, int a2, int a3)
{
  if (a2 < 0)
  {
    cnmatrix::FastResize<double>();
  }

  if (result[6] < a2)
  {
    cnmatrix::FastResize<double>();
  }

  if (a3 < 0)
  {
    cnmatrix::FastResize<double>();
  }

  if (result[7] < a3)
  {
    cnmatrix::FastResize<double>();
  }

  result[2] = a2;
  result[3] = a3;
  result[4] = a3 * a2;
  result[5] = a2;
  return result;
}

uint64_t cnmatrix::CNMatrixBase<double>::WriteValue(uint64_t result, double a2)
{
  v2 = *(result + 32);
  if (!v2)
  {
    cnmatrix::CNMatrixBase<double>::WriteValue();
  }

  v3 = *(result + 16);
  if (v3 > 3)
  {
    v10 = (v2 + 8 * v3);
    v11 = (v3 - 1) >> 1;
    v12 = vdupq_lane_s64(*&a2, 0);
    do
    {
      *v2++ = v12;
      --v11;
    }

    while (v11);
    v10[-1] = v12;
  }

  else if (v3 >= 1)
  {
    v4 = (v3 + 1) & 0xFFFFFFFE;
    v5 = vdupq_n_s64(v3 - 1);
    v6 = xmmword_261415AE0;
    v7 = &v2->i64[1];
    v8 = vdupq_n_s64(2uLL);
    do
    {
      v9 = vmovn_s64(vcgeq_u64(v5, v6));
      if (v9.i8[0])
      {
        *(v7 - 1) = a2;
      }

      if (v9.i8[4])
      {
        *v7 = a2;
      }

      v6 = vaddq_s64(v6, v8);
      v7 += 2;
      v4 -= 2;
    }

    while (v4);
  }

  return result;
}

uint64_t cnmatrix::CNMatrixBase<double>::operator()(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 32);
  if (!v2)
  {
    cnmatrix::CNMatrixBase<double>::operator()();
  }

  if ((a2 & 0x80000000) != 0)
  {
    cnmatrix::CNMatrixBase<double>::operator()();
  }

  if (*(a1 + 16) <= a2)
  {
    cnmatrix::CNMatrixBase<double>::operator()();
  }

  return v2 + 8 * a2;
}

double *cnmatrix::Multiply<double>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 12);
  if (v3 != *(a2 + 8))
  {
    cnmatrix::Multiply<double>();
  }

  if (a1 == a3)
  {
    cnmatrix::Multiply<double>();
  }

  if (a2 == a3)
  {
    cnmatrix::Multiply<double>();
  }

  v7 = *(a1 + 8);
  v8 = *(a2 + 12);
  result = cnmatrix::FastResize<double>(a3, *(a1 + 8), *(a2 + 12));
  if (v3 <= v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = v3;
  }

  if (v10 <= v7)
  {
    v10 = v7;
  }

  v11 = *(a1 + 32);
  if (v10 > 5)
  {
    v23 = *(a3 + 8);
    v22 = *(a3 + 32);
    v21 = *(a2 + 32);
    return cblas_dgemm_NEWLAPACK();
  }

  else if (v8)
  {
    v12 = 0;
    v13 = *(a2 + 32);
    v14 = *(a3 + 32);
    do
    {
      if (v7)
      {
        v15 = 0;
        v16 = v11;
        do
        {
          v17 = 0.0;
          if (v3)
          {
            v18 = v3;
            v19 = v13;
            result = v16;
            do
            {
              v20 = *v19++;
              v17 = v17 + *result * v20;
              result += v7;
              --v18;
            }

            while (v18);
          }

          *(v14 + 8 * v12 * v7 + 8 * v15++) = v17;
          ++v16;
        }

        while (v15 != v7);
      }

      ++v12;
      v13 += v3;
    }

    while (v12 != v8);
  }

  return result;
}

float64x2_t cnmatrix::Add<double>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 8);
  if (v4 != *(a2 + 8))
  {
    cnmatrix::Add<double>();
  }

  v7 = *(a1 + 12);
  if (v7 != *(a2 + 12))
  {
    cnmatrix::Add<double>();
  }

  if (a1 == a3)
  {
    cnmatrix::Add<double>();
  }

  if (a2 == a3)
  {
    cnmatrix::Add<double>();
  }

  cnmatrix::FastResize<double>(a3, v4, v7);
  v9 = *(a3 + 16);
  if (v9 > 3)
  {
    v16 = *(a1 + 32);
    v17 = *(a2 + 32);
    v18 = (v16 + 8 * (v9 - 2));
    v19 = *(a3 + 32);
    v20 = (v17 + 8 * (v9 - 2));
    v21 = (v19 + 8 * (v9 - 2));
    v22 = (v9 - 1) >> 1;
    do
    {
      v23 = *v16++;
      v24 = v23;
      v25 = *v17++;
      *v19++ = vaddq_f64(v24, v25);
      --v22;
    }

    while (v22);
    result = vaddq_f64(*v18, *v20);
    *v21 = result;
  }

  else if (v9 >= 1)
  {
    v10 = *(a1 + 32);
    v11 = *(a2 + 32);
    v12 = *(a3 + 32);
    do
    {
      v13 = *v10++;
      v14 = v13;
      v15 = *v11++;
      result.f64[0] = v14 + v15;
      *v12++ = result.f64[0];
      --v9;
    }

    while (v9);
  }

  return result;
}

__n128 cnmatrix::CNMatrixBase<double>::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v2 = *(a2 + 8);
    if (*(a1 + 24) < v2)
    {
      cnmatrix::CNMatrixBase<double>::operator=();
    }

    v3 = *(a2 + 12);
    if (*(a1 + 28) < v3)
    {
      cnmatrix::CNMatrixBase<double>::operator=();
    }

    *(a1 + 8) = v2;
    *(a1 + 12) = v3;
    v4 = v3 * v2;
    *(a1 + 16) = v4;
    *(a1 + 20) = v2;
    v5 = *(a2 + 16);
    if (v5 > 3)
    {
      v10 = *(a1 + 32);
      v11 = *(a2 + 32);
      v12 = (v10 + 8 * (v5 - 2));
      v13 = (v11 + 8 * (v5 - 2));
      v14 = (v5 - 1) >> 1;
      do
      {
        v15 = *v11++;
        *v10++ = v15;
        --v14;
      }

      while (v14);
      result = *v13;
      *v12 = *v13;
    }

    else if (v4 >= 1)
    {
      v6 = *(a2 + 32);
      v7 = *(a1 + 32);
      do
      {
        v8 = *v6++;
        result.n128_u64[0] = v8;
        *v7++ = v8;
        --v4;
      }

      while (v4);
    }
  }

  return result;
}

float64x2_t cnmatrix::Subtract<double>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 8);
  if (v4 != *(a2 + 8))
  {
    cnmatrix::Subtract<double>();
  }

  v7 = *(a1 + 12);
  if (v7 != *(a2 + 12))
  {
    cnmatrix::Subtract<double>();
  }

  if (a1 == a3)
  {
    cnmatrix::Subtract<double>();
  }

  if (a2 == a3)
  {
    cnmatrix::Subtract<double>();
  }

  cnmatrix::FastResize<double>(a3, v4, v7);
  v9 = *(a3 + 16);
  if (v9 > 3)
  {
    v16 = *(a1 + 32);
    v17 = *(a2 + 32);
    v18 = (v16 + 8 * (v9 - 2));
    v19 = *(a3 + 32);
    v20 = (v17 + 8 * (v9 - 2));
    v21 = (v19 + 8 * (v9 - 2));
    v22 = (v9 - 1) >> 1;
    do
    {
      v23 = *v16++;
      v24 = v23;
      v25 = *v17++;
      *v19++ = vsubq_f64(v24, v25);
      --v22;
    }

    while (v22);
    result = vsubq_f64(*v18, *v20);
    *v21 = result;
  }

  else if (v9 >= 1)
  {
    v10 = *(a1 + 32);
    v11 = *(a2 + 32);
    v12 = *(a3 + 32);
    do
    {
      v13 = *v10++;
      v14 = v13;
      v15 = *v11++;
      result.f64[0] = v14 - v15;
      *v12++ = result.f64[0];
      --v9;
    }

    while (v9);
  }

  return result;
}

void cnmatrix::Norm<double>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *__s1)
{
  if (a1 == a2)
  {
    cnmatrix::Norm<double>();
  }

  if (a1 == a3)
  {
    cnmatrix::Norm<double>();
  }

  if (a1 == a4)
  {
    cnmatrix::Norm<double>();
  }

  if (a2 == a3)
  {
    cnmatrix::Norm<double>();
  }

  if (a2 == a4)
  {
    cnmatrix::Norm<double>();
  }

  if (a3 == a4)
  {
    cnmatrix::Norm<double>();
  }

  v8 = *(a1 + 16);
  if (*(a2 + 16) < v8)
  {
    cnmatrix::Norm<double>();
  }

  if (v8)
  {
    v10 = *(a1 + 8);
    v11 = *__s1;
    if (v10 == 1 || (v12 = *(a1 + 12), v12 == 1))
    {
      if (v11 == 50)
      {
        if (!__s1[1])
        {
          v15 = *(a1 + 32);
          v16 = *v15 * *v15;
          if (v8 != 1)
          {
            v17 = v15 + 1;
            v18 = v8 - 1;
            do
            {
              v19 = *v17++;
              v16 = v16 + v19 * v19;
              --v18;
            }

            while (v18);
          }

          return;
        }
      }

      else if (v11 == 49 && !__s1[1])
      {
        v59 = *(a1 + 32);
        v60 = fabs(*v59);
        if (v8 != 1)
        {
          v61 = v59 + 1;
          v62 = v8 - 1;
          do
          {
            v63 = *v61++;
            v60 = v60 + fabs(v63);
            --v62;
          }

          while (v62);
        }

        return;
      }

      if (!strcmp(__s1, "inf"))
      {
        v26 = *(a1 + 32);
        v27 = fabs(*v26);
        if (v8 != 1)
        {
          v28 = v26 + 1;
          v29 = v8 - 1;
          do
          {
            v30 = *v28++;
            v31 = fabs(v30);
            if (v31 > v27)
            {
              v27 = v31;
            }

            --v29;
          }

          while (v29);
        }
      }

      else if (!strcmp(__s1, "-inf"))
      {
        v43 = *(a1 + 32);
        v44 = fabs(*v43);
        if (v8 != 1)
        {
          v45 = v43 + 1;
          v46 = v8 - 1;
          do
          {
            v47 = *v45++;
            v48 = fabs(v47);
            if (v48 < v44)
            {
              v44 = v48;
            }

            --v46;
          }

          while (v46);
        }
      }

      else
      {
        v76 = 0.0;
        if (sscanf(__s1, "%lg", &v76) != 1)
        {
          cnmatrix::Norm<double>();
        }

        v20 = v76;
        if (fabs(v76) >= 2.22044605e-16)
        {
          v49 = *(a1 + 32);
          v50 = pow(fabs(*v49), v76);
          if (v8 != 1)
          {
            v51 = v49 + 1;
            v52 = v8 - 1;
            do
            {
              v53 = *v51++;
              v50 = v50 + pow(fabs(v53), v20);
              --v52;
            }

            while (v52);
          }

          pow(v50, 1.0 / v20);
        }
      }

      return;
    }

    if (v11 == 50)
    {
      if (!__s1[1])
      {
        cnmatrix::SingularValues<double>(a1, a2, a3, a4);
        v13 = *(a4 + 32);
LABEL_14:
        v14 = *v13;
        return;
      }

      goto LABEL_31;
    }

    if (v11 != 49 || __s1[1])
    {
LABEL_31:
      if (!strcmp(__s1, "inf"))
      {
        if (v10)
        {
          v32 = *(a1 + 32);
          v33 = *(a2 + 32);
          v34 = v10;
          do
          {
            v35 = *v32++;
            *v33++ = fabs(v35);
            --v34;
          }

          while (v34);
        }

        if (v12 <= 1)
        {
          v37 = *(a2 + 32);
        }

        else
        {
          v36 = *(a1 + 32);
          v37 = *(a2 + 32);
          v38 = 1;
          v39 = v10;
          do
          {
            v40 = v10;
            v41 = v39;
            v42 = v37;
            if (v10)
            {
              do
              {
                *v42 = fabs(*(v36 + 8 * v41)) + *v42;
                ++v42;
                ++v41;
                --v40;
              }

              while (v40);
            }

            ++v38;
            v39 += v10;
          }

          while (v38 != v12);
        }

        v54 = *v37;
        if (v10 >= 2)
        {
          v55 = v37 + 1;
          v56 = v10 - 1;
          do
          {
            v57 = *v55++;
            v58 = v57;
            if (v57 > v54)
            {
              v54 = v58;
            }

            --v56;
          }

          while (v56);
        }
      }

      else
      {
        if (strcmp(__s1, "fro"))
        {
          cnmatrix::Norm<double>();
        }

        v21 = *(a1 + 32);
        v22 = *v21 * *v21;
        if (v8 != 1)
        {
          v23 = v21 + 1;
          v24 = v8 - 1;
          do
          {
            v25 = *v23++;
            v22 = v22 + v25 * v25;
            --v24;
          }

          while (v24);
        }
      }

      return;
    }

    if (!v12)
    {
      v13 = *(a2 + 32);
      goto LABEL_14;
    }

    v64 = 0;
    v65 = *(a1 + 32);
    v66 = *(a2 + 32);
    v67 = 1;
    do
    {
      v68 = fabs(*(v65 + 8 * (v10 * v64)));
      v66[v64] = v68;
      v69 = v10 - 1;
      v70 = v67;
      if (v10 >= 2)
      {
        do
        {
          v68 = v68 + fabs(*(v65 + 8 * v70));
          v66[v64] = v68;
          ++v70;
          --v69;
        }

        while (v69);
      }

      ++v64;
      v67 += v10;
    }

    while (v64 != v12);
    v71 = *v66;
    v72 = v66 + 1;
    v73 = v12 - 1;
    do
    {
      v74 = *v72++;
      v75 = v74;
      if (v74 > v71)
      {
        v71 = v75;
      }

      --v73;
    }

    while (v73);
  }
}

void cnmatrix::CNMatrix<308u,1u,double>::TransposeDataFootprint(uint64_t a1)
{
  v3 = *MEMORY[0x277D85DE8];
  cnmatrix::CNMatrix<3u,1u,double>::TransposeDataFootprint(a1, v2);
  v1 = *MEMORY[0x277D85DE8];
}

_DWORD *cnmatrix::SingularValues<double>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 8);
  v5 = *(a1 + 12);
  if (v5 <= v6)
  {
    v7 = *(a1 + 8);
  }

  else
  {
    v7 = *(a1 + 12);
  }

  if (v5 >= v6)
  {
    v8 = *(a1 + 8);
  }

  else
  {
    v8 = *(a1 + 12);
  }

  if (a1 == a2)
  {
    cnmatrix::SingularValues<double>();
  }

  if (a1 == a3)
  {
    cnmatrix::SingularValues<double>();
  }

  if (a1 == a4)
  {
    cnmatrix::SingularValues<double>();
  }

  if (a2 == a3)
  {
    cnmatrix::SingularValues<double>();
  }

  if (a2 == a4)
  {
    cnmatrix::SingularValues<double>();
  }

  if (a3 == a4)
  {
    cnmatrix::SingularValues<double>();
  }

  v11 = *(a3 + 28) * *(a3 + 24);
  if (!v11)
  {
    cnmatrix::SingularValues<double>();
  }

  if (v11 < 3 * v8 + v7)
  {
    cnmatrix::SingularValues<double>();
  }

  if (v11 < 5 * v8)
  {
    cnmatrix::SingularValues<double>();
  }

  if (*(a2 + 24) < v6)
  {
    cnmatrix::SingularValues<double>();
  }

  if (*(a2 + 28) < v5)
  {
    cnmatrix::SingularValues<double>();
  }

  if (*(a4 + 24) < v8)
  {
    cnmatrix::SingularValues<double>();
  }

  if (!*(a4 + 28))
  {
    cnmatrix::SingularValues<double>();
  }

  cnmatrix::CNMatrixBase<double>::operator=(a2, a1);
  v12 = *(a2 + 32);
  v13 = *(a4 + 32);
  v14 = *(a3 + 32);
  v18 = *(a2 + 12);
  v17 = *(a2 + 8);
  v15 = dgesvd_NEWLAPACK();
  if (v11 < **(a3 + 32) && cnprint::CNPrinter::GetLogLevel(v15) <= 1)
  {
    cnprint::CNPrinter::Print();
  }

  cnmatrix::FastResize<double>(a3, *(a3 + 24), *(a3 + 28));
  return cnmatrix::FastResize<double>(a4, v8, 1);
}

void sub_2613E391C(_Unwind_Exception *a1)
{
  v6 = v4;

  _Unwind_Resume(a1);
}

void sub_2613E3FE8(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_2613E45B8(_Unwind_Exception *a1)
{
  v6 = v4;

  _Unwind_Resume(a1);
}

void sub_2613E5E78(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

double PRCommonConvertTicksToSeconds(unint64_t a1)
{
  v2 = *&PRCommonConvertTicksToSeconds(unsigned long long)::ticksToSeconds;
  if (*&PRCommonConvertTicksToSeconds(unsigned long long)::ticksToSeconds == 0.0)
  {
    if (mach_timebase_info(&info))
    {
      PRCommonConvertTicksToSeconds();
    }

    if (info.denom)
    {
      denom = info.denom;
      numer = info.numer;
      do
      {
        v5 = denom;
        denom = numer % denom;
        numer = v5;
      }

      while (denom);
    }

    else
    {
      v5 = info.numer;
    }

    v6 = 1000000000;
    v7 = info.numer / v5;
    do
    {
      v8 = v7;
      v7 = v6;
      v6 = v8 % v6;
    }

    while (v6);
    v2 = (info.numer / v5 / v7) / (0x3B9ACA00 / v7 * (info.denom / v5));
    *&PRCommonConvertTicksToSeconds(unsigned long long)::ticksToSeconds = v2;
  }

  return v2 * a1;
}

double PRCommonGetMachTimeSeconds(void)
{
  v0 = mach_absolute_time();

  return PRCommonConvertTicksToSeconds(v0);
}

double PRCommonGetMachContinuousTimeSeconds(void)
{
  v0 = mach_continuous_time();

  return PRCommonConvertTicksToSeconds(v0);
}

BOOL PRCommonGetAllTimes(double *a1, double *a2, double *a3)
{
  times = mach_get_times();
  if (!times)
  {
    if (a1)
    {
      *a1 = v9 / 1000000000.0 + v8 - *MEMORY[0x277CBECD0];
    }

    if (a2)
    {
      *a2 = PRCommonConvertTicksToSeconds(0);
    }

    if (a3)
    {
      *a3 = PRCommonConvertTicksToSeconds(0);
    }
  }

  return times == 0;
}

id PRCommonConvertNSDataToHexNSString(NSData *a1, int a2)
{
  v3 = a1;
  memset(&v16, 0, sizeof(v16));
  std::vector<unsigned char>::vector[abi:ne200100](&v14, -[NSData length](v3, "length"));
  [(NSData *)v3 getBytes:v14 length:[(NSData *)v3 length]];
  v4 = v14;
  v5 = v15;
  if (v14 == v15)
  {
    v9 = &v16;
  }

  else
  {
    do
    {
      v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%02X", *v4];
      std::string::basic_string[abi:ne200100]<0>(__p, [v6 UTF8String]);

      if ((v13 & 0x80u) == 0)
      {
        v7 = __p;
      }

      else
      {
        v7 = __p[0];
      }

      if ((v13 & 0x80u) == 0)
      {
        v8 = v13;
      }

      else
      {
        v8 = __p[1];
      }

      if (a2)
      {
        std::string::insert(&v16, 0, v7, v8);
      }

      else
      {
        std::string::append(&v16, v7, v8);
      }

      if (v13 < 0)
      {
        operator delete(__p[0]);
      }

      ++v4;
    }

    while (v4 != v5);
    if ((v16.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v9 = &v16;
    }

    else
    {
      v9 = v16.__r_.__value_.__r.__words[0];
    }
  }

  v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:v9];
  if (v14)
  {
    v15 = v14;
    operator delete(v14);
  }

  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v16.__r_.__value_.__l.__data_);
  }

  return v10;
}

void sub_2613E70E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

_BYTE *std::string::basic_string[abi:ne200100]<0>(_BYTE *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  a1[23] = v4;
  if (v4)
  {
    memmove(a1, __s, v4);
  }

  a1[v5] = 0;
  return a1;
}

id PRCommonConvertHexNSStringToNSData(NSString *a1)
{
  v1 = a1;
  if (([(NSString *)v1 length]& 1) != 0)
  {
    v2 = 0;
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, -[NSString UTF8String](v1, "UTF8String"));
    v2 = objc_opt_new();
    v11 = 0;
    v3 = v13;
    if (v14 >= 0)
    {
      v3 = v14;
    }

    if (v3 >= 2)
    {
      v4 = 0;
      v5 = v14 >> 63;
      do
      {
        if (v5)
        {
          p_p = __p;
        }

        else
        {
          p_p = &__p;
        }

        *__str = *&p_p[v4];
        HIBYTE(v11) = strtol(__str, 0, 16);
        [v2 appendBytes:&v11 + 1 length:1];
        v7 = v4 + 3;
        v4 += 2;
        v8 = v14;
        v5 = v14 >> 63;
        if (v14 < 0)
        {
          v8 = v13;
        }
      }

      while (v8 > v7);
    }

    if (v14 < 0)
    {
      operator delete(__p);
    }
  }

  return v2;
}

void sub_2613E7310(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

char *PRCommonSerializePrintableState(void *a1, void *a2)
{
  v18[1] = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v5 = objc_autoreleasePoolPush();
  v6 = [MEMORY[0x277CCAC58] dataWithPropertyList:v4 format:200 options:0 error:0];
  if ([v6 length] > 0x8000)
  {
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"WARNING: statedump too big (%d > %d)", objc_msgSend(v6, "length"), 0x8000];
    v8 = MEMORY[0x277CCAC58];
    v17 = v3;
    v18[0] = v7;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:&v17 count:1];
    v10 = [v8 dataWithPropertyList:v9 format:200 options:0 error:0];

    v6 = v10;
  }

  v11 = malloc_type_calloc(1uLL, [v6 length] + 200, 0x1000040BEF03554uLL);
  *v11 = 1;
  *(v11 + 1) = [v6 length];
  v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"[nearbyd] %@", v3];
  v13 = v12;
  strlcpy(v11 + 136, [v12 UTF8String], 0x40uLL);

  v14 = v6;
  memcpy(v11 + 200, [v6 bytes], objc_msgSend(v6, "length"));

  objc_autoreleasePoolPop(v5);
  v15 = *MEMORY[0x277D85DE8];
  return v11;
}

{
  v10[1] = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v9 = v3;
  v10[0] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  v6 = PRCommonSerializePrintableState(v3, v5);

  v7 = *MEMORY[0x277D85DE8];
  return v6;
}

void *std::vector<unsigned char>::vector[abi:ne200100](void *result, uint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<unsigned char>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_2613E76C8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<unsigned char>::__vallocate[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    operator new();
  }

  std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_279AD6030, MEMORY[0x277D825F0]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E0] + 16);
  return result;
}

void sub_2613E87B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v23 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2613E8984(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v11 = v10;

  _Unwind_Resume(a1);
}

void sub_2613E9370(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_2613E9F88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_2613EA130(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_2613EA888(_Unwind_Exception *a1)
{
  v6 = v2;

  _Unwind_Resume(a1);
}

void sub_2613EB258(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_2613EC55C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v11 = v10;

  _Unwind_Resume(a1);
}

void sub_2613EC828(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  a9.super_class = PRBTLocalizer;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

uint64_t *std::unique_ptr<BTFinding::PRRSSIFilter>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = *(v2 + 88);
    if (v3)
    {
      *(v2 + 96) = v3;
      operator delete(v3);
    }

    v4 = *(v2 + 64);
    if (v4)
    {
      *(v2 + 72) = v4;
      operator delete(v4);
    }

    v5 = *(v2 + 40);
    if (v5)
    {
      *(v2 + 48) = v5;
      operator delete(v5);
    }

    JUMPOUT(0x2667015A0);
  }

  return result;
}

void RoseSyntheticApertureFiltering::PRRoseSyntheticApertureBatchFilter::PRRoseSyntheticApertureBatchFilter(RoseSyntheticApertureFiltering::PRRoseSyntheticApertureBatchFilter *this)
{
  *this = 0;
  *(this + 4) = 0;
  *(this + 2) = 0;
  *(this + 12) = 0;
  *(this + 1) = 0u;
  *(this + 14) = 0;
  *(this + 60) = 0;
  *(this + 4) = 0u;
  *(this + 26) = 0;
  *(this + 108) = 0;
  *(this + 7) = 0u;
  *(this + 9) = 0u;
  v2 = this + 168;
  *(this + 2) = 0u;
  *(this + 45) = 0;
  *(this + 5) = 0u;
  *(this + 93) = 0;
  *(this + 8) = 0u;
  *(this + 24) = 0x100000003;
  *(this + 20) = 0;
  *(this + 21) = &unk_2873C40E8;
  *(this + 11) = xmmword_261415AA0;
  *(this + 25) = this + 208;
  cnmatrix::FastResize<double>(this + 42, 3, 1);
  cnmatrix::CNMatrixBase<double>::WriteValue(v2, 0.0);
  *(this + 33) = 0x100000004;
  *(this + 30) = &unk_2873C4170;
  *(this + 248) = xmmword_261415AC0;
  *(this + 34) = this + 280;
  cnmatrix::FastResize<double>(this + 60, 4, 1);
  cnmatrix::CNMatrixBase<double>::WriteValue(this + 240, 0.0);
  *(this + 42) = 0x300000003;
  *(this + 39) = &unk_2873C4240;
  *(this + 20) = xmmword_261415D50;
  *(this + 43) = this + 352;
  *(this + 53) = 0;
  *(this + 440) = 0;
  *(this + 60) = 0x100000003;
  *(this + 57) = &unk_2873C40E8;
  *(this + 29) = xmmword_261415AA0;
  *(this + 61) = this + 496;
  *(this + 68) = 0x100000003;
  *(this + 65) = &unk_2873C40E8;
  *(this + 33) = xmmword_261415AA0;
  *(this + 69) = this + 560;
  *(this + 584) = 0u;
  *(this + 600) = 0u;
  *(this + 77) = 0x3FF0000000000000;
  *(this + 78) = 0;
  *(this + 83) = 0;
  operator new();
}

void sub_2613ECFA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void **a10, void **a11, void **a12, uint64_t a13, uint64_t a14, void **a15)
{
  *v21 = &unk_2873C4140;
  *v20 = &unk_2873C4140;
  a15 = (v15 + 720);
  std::vector<RoseSyntheticApertureFiltering::InternalRangeMeas>::__destroy_vector::operator()[abi:ne200100](&a15);
  a15 = (v15 + 696);
  std::vector<RoseSyntheticApertureFiltering::InternalAoAMeas>::__destroy_vector::operator()[abi:ne200100](&a15);
  std::vector<RoseSyntheticApertureFiltering::InternalRangeMeas>::__destroy_vector::operator()[abi:ne200100](&a15);
  boost::circular_buffer<double,std::allocator<double>>::destroy(v15 + 632);
  *v19 = &unk_2873C4140;
  *v18 = &unk_2873C4140;
  *a9 = &unk_2873C4140;
  *v17 = &unk_2873C4140;
  *v16 = &unk_2873C4140;
  std::vector<RoseSyntheticApertureFiltering::InternalFilterState>::__destroy_vector::operator()[abi:ne200100](&a15);
  v23 = *a10;
  if (*a10)
  {
    *(v15 + 120) = v23;
    operator delete(v23);
  }

  v24 = *a11;
  if (*a11)
  {
    *(v15 + 72) = v24;
    operator delete(v24);
  }

  v25 = *a12;
  if (*a12)
  {
    *(v15 + 24) = v25;
    operator delete(v25);
  }

  _Unwind_Resume(a1);
}

void *std::vector<RoseSyntheticApertureFiltering::InternalRangeMeas>::reserve(void *result, unint64_t a2)
{
  if (0x6DB6DB6DB6DB6DB7 * ((result[2] - *result) >> 4) < a2)
  {
    if (a2 < 0x24924924924924ALL)
    {
      v2 = result[1] - *result;
      std::__allocate_at_least[abi:ne200100]<std::allocator<RoseSyntheticApertureFiltering::InternalRangeMeas>>(result, a2);
    }

    std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void sub_2613ED1E8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<RoseSyntheticApertureFiltering::InternalRangeMeas>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

double *RoseSyntheticApertureFiltering::PRRoseSyntheticApertureBatchFilter::getCurrentRotatedSolution@<X0>(RoseSyntheticApertureFiltering::PRRoseSyntheticApertureBatchFilter *this@<X0>, uint64_t a2@<X8>)
{
  cnmatrix::CNMatrix<3u,3u,double>::CNMatrix(v11, *(this + 81), *(this + 80));
  cnmatrix::Transpose<double>(this + 312, v11);
  v4 = *(this + 18);
  v8 = 0x100000003;
  v6 = &unk_2873C40E8;
  v7 = xmmword_261415AA0;
  v9 = &v10;
  cnmatrix::Subtract<double>(v4, this + 168, &v6);
  *(a2 + 24) = 0x100000003;
  *a2 = &unk_2873C40E8;
  *(a2 + 8) = xmmword_261415AA0;
  *(a2 + 32) = a2 + 40;
  return cnmatrix::Multiply<double>(v11, &v6, a2);
}

double *RoseSyntheticApertureFiltering::PRRoseSyntheticApertureBatchFilter::getCurrentRotatedCovariance@<X0>(RoseSyntheticApertureFiltering::PRRoseSyntheticApertureBatchFilter *this@<X0>, uint64_t a2@<X8>)
{
  cnmatrix::CNMatrix<3u,3u,double>::CNMatrix(v6, *(this + 81), *(this + 80));
  cnmatrix::Transpose<double>(this + 312, v6);
  cnmatrix::CNMatrix<3u,3u,double>::CNMatrix(v5, *(this + 18) + 128);
  *(a2 + 24) = 0x300000003;
  *a2 = &unk_2873C4240;
  *(a2 + 8) = xmmword_261415D50;
  *(a2 + 32) = a2 + 40;
  return cnmatrix::Multiply<double>(v6, v5, a2);
}

double RoseSyntheticApertureFiltering::PRRoseSyntheticApertureBatchFilter::getBatchOrAoASolution@<D0>(RoseSyntheticApertureFiltering::PRRoseSyntheticApertureBatchFilter *this@<X0>, uint64_t a2@<X8>)
{
  v13 = *MEMORY[0x277D85DE8];
  if (*(this + 934) & 1) != 0 || (*(this + 933))
  {
    goto LABEL_3;
  }

  if (*(this + 928) == 1)
  {
    v7 = *(this + 56);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(this + 76);
      v11 = 134217984;
      v12 = v8;
      _os_log_impl(&dword_2613DF000, v7, OS_LOG_TYPE_DEFAULT, "Returning solution from AoA at %f s", &v11, 0xCu);
    }

    *a2 = *(this + 6);
    *(a2 + 5) = *(this + 53);
    *(a2 + 24) = 0;
    *(a2 + 32) = 0;
    *(a2 + 16) = 0;
    std::vector<RoseSyntheticApertureFiltering::BatchSolutionParticle>::__init_with_size[abi:ne200100]<RoseSyntheticApertureFiltering::BatchSolutionParticle*,RoseSyntheticApertureFiltering::BatchSolutionParticle*>(a2 + 16, *(this + 8), *(this + 9), 0xCF3CF3CF3CF3CF3DLL * ((*(this + 9) - *(this + 8)) >> 3));
    v4 = 88;
  }

  else
  {
    if (*(this + 929) != 1)
    {
LABEL_3:
      *a2 = *this;
      *(a2 + 5) = *(this + 5);
      *(a2 + 24) = 0;
      *(a2 + 32) = 0;
      *(a2 + 16) = 0;
      std::vector<RoseSyntheticApertureFiltering::BatchSolutionParticle>::__init_with_size[abi:ne200100]<RoseSyntheticApertureFiltering::BatchSolutionParticle*,RoseSyntheticApertureFiltering::BatchSolutionParticle*>(a2 + 16, *(this + 2), *(this + 3), 0xCF3CF3CF3CF3CF3DLL * ((*(this + 3) - *(this + 2)) >> 3));
      v4 = 40;
      goto LABEL_4;
    }

    v9 = *(this + 56);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(this + 107);
      v11 = 134217984;
      v12 = v10;
      _os_log_impl(&dword_2613DF000, v9, OS_LOG_TYPE_DEFAULT, "Returning solution from straight path estimator at %f s", &v11, 0xCu);
    }

    *a2 = *(this + 12);
    *(a2 + 5) = *(this + 101);
    *(a2 + 24) = 0;
    *(a2 + 32) = 0;
    *(a2 + 16) = 0;
    std::vector<RoseSyntheticApertureFiltering::BatchSolutionParticle>::__init_with_size[abi:ne200100]<RoseSyntheticApertureFiltering::BatchSolutionParticle*,RoseSyntheticApertureFiltering::BatchSolutionParticle*>(a2 + 16, *(this + 14), *(this + 15), 0xCF3CF3CF3CF3CF3DLL * ((*(this + 15) - *(this + 14)) >> 3));
    v4 = 136;
  }

LABEL_4:
  result = *(this + v4);
  *(a2 + 40) = result;
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

void RoseSyntheticApertureFiltering::PRRoseSyntheticApertureBatchFilter::updateCurrentBatchSolution(RoseSyntheticApertureFiltering::PRRoseSyntheticApertureBatchFilter *this@<X0>, double a2@<D0>, double a3@<D1>, uint64_t a4@<X8>)
{
  v16 = *MEMORY[0x277D85DE8];
  *(this + 29) = a3;
  if (a2 - *(this + 74) <= 10.0 || *(this + 85) == *(this + 84))
  {
    if (*(this + 933) == 1)
    {
      *(this + 12) = 0;
      v7 = *(this + 2);
      RoseSyntheticApertureFiltering::PRRoseSyntheticApertureBatchFilter::checkVerticalAmbiguityResolution(this);
      if (v7 != *(this + 2))
      {
        v8 = *(this + 56);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v12) = 0;
          _os_log_impl(&dword_2613DF000, v8, OS_LOG_TYPE_DEFAULT, "Vertical state changed with the pose update", &v12, 2u);
        }

        *(this + 12) = 1;
      }
    }
  }

  else
  {
    RoseSyntheticApertureFiltering::PRRoseSyntheticApertureBatchFilter::reinitFilter(this);
    *this = 0;
    *(this + 4) = 0;
    *(this + 2) = 0;
    *(this + 12) = 0;
    std::vector<RoseSyntheticApertureFiltering::BatchSolutionParticle>::__assign_with_size[abi:ne200100]<RoseSyntheticApertureFiltering::BatchSolutionParticle*,RoseSyntheticApertureFiltering::BatchSolutionParticle*>(this + 2, 0, 0, 0);
    *(this + 5) = 0;
  }

  if (*(this + 928) == 1)
  {
    v9 = *(this + 76);
    if (a2 - v9 > 10.0)
    {
      *(this + 928) = 0;
      v10 = *(this + 56);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 134218240;
        v13 = v9;
        v14 = 2048;
        v15 = a2;
        _os_log_impl(&dword_2613DF000, v10, OS_LOG_TYPE_DEFAULT, "AoA Solution from AoA at %f s is no longer valid - current time is %f s", &v12, 0x16u);
      }
    }
  }

  RoseSyntheticApertureFiltering::PRRoseSyntheticApertureBatchFilter::getBatchOrAoASolution(this, a4);
  v11 = *MEMORY[0x277D85DE8];
}

void RoseSyntheticApertureFiltering::PRRoseSyntheticApertureBatchFilter::reinitFilter(RoseSyntheticApertureFiltering::PRRoseSyntheticApertureBatchFilter *this)
{
  v2 = *(this + 85);
  v3 = *(this + 84);
  if (v2 != v3)
  {
    v4 = v2 - 72;
    do
    {
      *(v2 - 72) = &unk_2873C4140;
      v4 -= 112;
      v2 -= 112;
    }

    while (v2 != v3);
  }

  *(this + 85) = v3;
  v5 = *(this + 88);
  v6 = *(this + 87);
  if (v5 != v6)
  {
    v7 = v5 - 176;
    do
    {
      *(v5 - 112) = &unk_2873C4140;
      *(v5 - 176) = &unk_2873C4140;
      v7 -= 208;
      v5 -= 208;
    }

    while (v5 != v6);
  }

  *(this + 88) = v6;
  RoseSyntheticApertureFiltering::PRRoseSyntheticApertureBatchFilter::resetFilter(this);
  v8 = *(this + 2);
  *(this + 5) = 0;
  *this = 0;
  if (v8)
  {
    *(this + 3) = v8;
    operator delete(v8);
  }

  v9 = 0uLL;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  v10 = *(this + 8);
  *(this + 6) = 0;
  *(this + 53) = 0;
  if (v10)
  {
    *(this + 9) = v10;
    operator delete(v10);
    v9 = 0uLL;
  }

  *(this + 4) = v9;
  *(this + 5) = v9;
  v11 = *(this + 14);
  *(this + 12) = 0;
  *(this + 101) = 0;
  if (v11)
  {
    *(this + 15) = v11;
    operator delete(v11);
  }

  *(this + 7) = 0u;
  *(this + 8) = 0u;
  v12 = *(this + 18);
  *(this + 29) = 0;
  *(this + 584) = 0u;
  *(this + 600) = 0u;
  *(this + 77) = 0x3FF0000000000000;
  std::vector<RoseSyntheticApertureFiltering::InternalFilterState>::__base_destruct_at_end[abi:ne200100](this + 144, v12);
  v13 = *(this + 83);
  v15 = *(this + 80);
  v14 = *(this + 81);
  if (v13 >= (v15 - v14) >> 3)
  {
    v13 -= (v15 - *(this + 79)) >> 3;
  }

  *(this + 81) = v14 + 8 * v13;
  *(this + 83) = 0;
  *(this + 464) = 0;
  *(this + 107) = 0;
  *(this + 440) = 0;
  v16 = *(this + 56);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *v17 = 0;
    _os_log_impl(&dword_2613DF000, v16, OS_LOG_TYPE_DEFAULT, "Batch filter is reinitialized", v17, 2u);
  }
}

void RoseSyntheticApertureFiltering::PRRoseSyntheticApertureBatchFilter::checkVerticalAmbiguityResolution(RoseSyntheticApertureFiltering::PRRoseSyntheticApertureBatchFilter *this)
{
  *(this + 234) = 0;
  *(this + 940) = 0;
  if (*(this + 933) == 1)
  {
    v2 = *(this + 18);
    v44 = 0x100000003;
    v42 = &unk_2873C40E8;
    v43 = xmmword_261415AA0;
    v45 = v46;
    cnmatrix::Subtract<double>(v2, this + 168, &v42);
    v3 = cnmatrix::CNMatrixBase<double>::operator()(&v42, 0);
    v4 = cnmatrix::CNMatrixBase<double>::operator()(&v42, 0);
    v5 = cnmatrix::CNMatrixBase<double>::operator()(&v42, 2u);
    if (sqrt(v5 * cnmatrix::CNMatrixBase<double>::operator()(&v42, 2u) + v3 * v4) <= 2.0)
    {
      v6 = *(this + 18);
      v7 = *(this + 19);
      if (v6 == v7)
      {
LABEL_15:
        *(this + 234) = 1;
      }

      else
      {
        while (1)
        {
          v8 = cnmatrix::CNMatrixBase<double>::operator()(v6 + 128, 1, 1);
          v9 = cnmatrix::CNMatrixBase<double>::operator()(v6, 1u);
          v10 = sqrt(v8);
          v11 = v9 - *(this + 29);
          v12 = v10 + v11;
          v13 = v11 - v10;
          if (v13 <= -2.5 && v12 >= -2.5)
          {
            break;
          }

          if (v13 <= 2.5 && v12 >= 2.5)
          {
            break;
          }

          v6 += 432;
          if (v6 == v7)
          {
            goto LABEL_15;
          }
        }
      }
    }

    v16 = 0x6DB6DB6DB6DB6DB7 * ((*(this + 85) - *(this + 84)) >> 4);
    __src[0] = 0;
    __src[1] = 0;
    v41 = 0;
    std::vector<double>::reserve(__src, v16);
    v17 = *(this + 84);
    v18 = *(this + 85);
    if (v17 != v18)
    {
      v19 = *(this + 18);
      do
      {
        v37 = 0x100000003;
        v35 = &unk_2873C40E8;
        v36 = xmmword_261415AA0;
        v38 = &v39;
        cnmatrix::Subtract<double>(v19, v17 + 40, &v35);
        v20 = cnmatrix::CNMatrixBase<double>::operator()(&v35, 0);
        v21 = cnmatrix::CNMatrixBase<double>::operator()(&v35, 2u);
        if (sqrt(v21 * v21 + v20 * v20) <= 1.0)
        {
          v22 = cnmatrix::CNMatrixBase<double>::operator()(&v35, 1u);
          v23 = __src[1];
          if (__src[1] >= v41)
          {
            v25 = __src[0];
            v26 = __src[1] - __src[0];
            v27 = (__src[1] - __src[0]) >> 3;
            v28 = v27 + 1;
            if ((v27 + 1) >> 61)
            {
              std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
            }

            v29 = v41 - __src[0];
            if ((v41 - __src[0]) >> 2 > v28)
            {
              v28 = v29 >> 2;
            }

            if (v29 >= 0x7FFFFFFFFFFFFFF8)
            {
              v30 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v30 = v28;
            }

            if (v30)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(__src, v30);
            }

            *(8 * v27) = v22;
            v24 = (8 * v27 + 8);
            memcpy(0, v25, v26);
            v31 = __src[0];
            __src[0] = 0;
            __src[1] = v24;
            v41 = 0;
            if (v31)
            {
              operator delete(v31);
            }
          }

          else
          {
            *__src[1] = v22;
            v24 = v23 + 8;
          }

          __src[1] = v24;
        }

        v17 += 112;
      }

      while (v17 != v18);
    }

    v32 = __src[0];
    if (__src[0] != __src[1])
    {
      v46[31] = 0;
      v33 = std::__minmax_element_impl[abi:ne200100]<std::__wrap_iter<double *>,std::__wrap_iter<double *>,std::__identity,std::__less<void,void>>(__src[0], __src[1]);
      if (*v34 - *v33 >= 0.5)
      {
        *(this + 234) = 2;
        *(this + 940) = 1;
      }

      v32 = __src[0];
    }

    if (v32)
    {
      __src[1] = v32;
      operator delete(v32);
    }
  }
}

void sub_2613EDCFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void RoseSyntheticApertureFiltering::PRRoseSyntheticApertureBatchFilter::spatialBinning(__int128 **a1@<X1>, uint64_t *a2@<X8>)
{
  v5 = *a1;
  v4 = a1[1];
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  v62 = v5;
  v63[0] = v5;
  v6 = v4 - v5;
  if (v4 == v5 || (v7 = v5 + 7, v65 = v5 + 7, v5 + 7 == v4))
  {
    v9 = v5;
    goto LABEL_26;
  }

  if (std::_MinmaxElementLessFunc<RoseSyntheticApertureFiltering::PRRoseSyntheticApertureBatchFilter::spatialBinning(std::vector<RoseSyntheticApertureFiltering::InternalRangeMeas>)::$_0,std::__identity>::operator()[abi:ne200100]<std::__wrap_iter<RoseSyntheticApertureFiltering::InternalRangeMeas const*>>(&v65, &v62))
  {
    v62 = (v5 + 7);
    v8 = v5;
  }

  else
  {
    v63[0] = v5 + 7;
    v8 = v5 + 7;
    v7 = v5;
  }

  v9 = v5 + 14;
  if (v5 + 14 == v4)
  {
LABEL_20:
    v5 = v8;
    v9 = v7;
    goto LABEL_26;
  }

  v10 = v5 + 21;
  while (1)
  {
    v64 = v10 - 7;
    v65 = v9 + 7;
    if (v9 + 7 == v4)
    {
      break;
    }

    if (std::_MinmaxElementLessFunc<RoseSyntheticApertureFiltering::PRRoseSyntheticApertureBatchFilter::spatialBinning(std::vector<RoseSyntheticApertureFiltering::InternalRangeMeas>)::$_0,std::__identity>::operator()[abi:ne200100]<std::__wrap_iter<RoseSyntheticApertureFiltering::InternalRangeMeas const*>>(&v65, &v64))
    {
      if (std::_MinmaxElementLessFunc<RoseSyntheticApertureFiltering::PRRoseSyntheticApertureBatchFilter::spatialBinning(std::vector<RoseSyntheticApertureFiltering::InternalRangeMeas>)::$_0,std::__identity>::operator()[abi:ne200100]<std::__wrap_iter<RoseSyntheticApertureFiltering::InternalRangeMeas const*>>(&v65, &v62))
      {
        v62 = v10;
        v7 = v10;
      }

      v11 = std::_MinmaxElementLessFunc<RoseSyntheticApertureFiltering::PRRoseSyntheticApertureBatchFilter::spatialBinning(std::vector<RoseSyntheticApertureFiltering::InternalRangeMeas>)::$_0,std::__identity>::operator()[abi:ne200100]<std::__wrap_iter<RoseSyntheticApertureFiltering::InternalRangeMeas const*>>(&v64, v63);
      v12 = v9;
      if (v11)
      {
        goto LABEL_19;
      }
    }

    else
    {
      if (std::_MinmaxElementLessFunc<RoseSyntheticApertureFiltering::PRRoseSyntheticApertureBatchFilter::spatialBinning(std::vector<RoseSyntheticApertureFiltering::InternalRangeMeas>)::$_0,std::__identity>::operator()[abi:ne200100]<std::__wrap_iter<RoseSyntheticApertureFiltering::InternalRangeMeas const*>>(&v64, &v62))
      {
        v62 = (v10 - 7);
        v7 = v10 - 7;
      }

      v13 = std::_MinmaxElementLessFunc<RoseSyntheticApertureFiltering::PRRoseSyntheticApertureBatchFilter::spatialBinning(std::vector<RoseSyntheticApertureFiltering::InternalRangeMeas>)::$_0,std::__identity>::operator()[abi:ne200100]<std::__wrap_iter<RoseSyntheticApertureFiltering::InternalRangeMeas const*>>(&v65, v63);
      v12 = v10;
      if (v13)
      {
        goto LABEL_19;
      }
    }

    v63[0] = v12;
    v8 = v12;
LABEL_19:
    v9 += 14;
    v65 = v9;
    v10 += 14;
    if (v9 == v4)
    {
      goto LABEL_20;
    }
  }

  if (!std::_MinmaxElementLessFunc<RoseSyntheticApertureFiltering::PRRoseSyntheticApertureBatchFilter::spatialBinning(std::vector<RoseSyntheticApertureFiltering::InternalRangeMeas>)::$_0,std::__identity>::operator()[abi:ne200100]<std::__wrap_iter<RoseSyntheticApertureFiltering::InternalRangeMeas const*>>(&v64, &v62))
  {
    if (!std::_MinmaxElementLessFunc<RoseSyntheticApertureFiltering::PRRoseSyntheticApertureBatchFilter::spatialBinning(std::vector<RoseSyntheticApertureFiltering::InternalRangeMeas>)::$_0,std::__identity>::operator()[abi:ne200100]<std::__wrap_iter<RoseSyntheticApertureFiltering::InternalRangeMeas const*>>(&v64, v63))
    {
      v8 = v10 - 7;
    }

    v9 = v7;
  }

  v5 = v8;
LABEL_26:
  v14 = cnmatrix::CNMatrixBase<double>::operator()(v9 + 40, 0);
  v15 = cnmatrix::CNMatrixBase<double>::operator()(v5 + 40, 0);
  v16 = *a1;
  v17 = a1[1];
  v62 = v16;
  v63[0] = v16;
  if (v16 == v17)
  {
    goto LABEL_48;
  }

  v18 = v16 + 7;
  v65 = v16 + 7;
  if (v16 + 7 == v17)
  {
    goto LABEL_48;
  }

  if (std::_MinmaxElementLessFunc<RoseSyntheticApertureFiltering::PRRoseSyntheticApertureBatchFilter::spatialBinning(std::vector<RoseSyntheticApertureFiltering::InternalRangeMeas>)::$_1,std::__identity>::operator()[abi:ne200100]<std::__wrap_iter<RoseSyntheticApertureFiltering::InternalRangeMeas const*>>(&v65, &v62))
  {
    v62 = (v16 + 7);
  }

  else
  {
    v63[0] = v16 + 7;
    v18 = v16;
  }

  if (v16 + 14 == v17)
  {
LABEL_47:
    v16 = v18;
    goto LABEL_48;
  }

  v19 = v16 + 21;
  v16 += 14;
  while (2)
  {
    v64 = v19 - 7;
    v65 = v16 + 7;
    if (v16 + 7 != v17)
    {
      if (std::_MinmaxElementLessFunc<RoseSyntheticApertureFiltering::PRRoseSyntheticApertureBatchFilter::spatialBinning(std::vector<RoseSyntheticApertureFiltering::InternalRangeMeas>)::$_1,std::__identity>::operator()[abi:ne200100]<std::__wrap_iter<RoseSyntheticApertureFiltering::InternalRangeMeas const*>>(&v65, &v64))
      {
        if (std::_MinmaxElementLessFunc<RoseSyntheticApertureFiltering::PRRoseSyntheticApertureBatchFilter::spatialBinning(std::vector<RoseSyntheticApertureFiltering::InternalRangeMeas>)::$_1,std::__identity>::operator()[abi:ne200100]<std::__wrap_iter<RoseSyntheticApertureFiltering::InternalRangeMeas const*>>(&v65, &v62))
        {
          v62 = v19;
          v18 = v19;
        }

        v20 = std::_MinmaxElementLessFunc<RoseSyntheticApertureFiltering::PRRoseSyntheticApertureBatchFilter::spatialBinning(std::vector<RoseSyntheticApertureFiltering::InternalRangeMeas>)::$_1,std::__identity>::operator()[abi:ne200100]<std::__wrap_iter<RoseSyntheticApertureFiltering::InternalRangeMeas const*>>(&v64, v63);
        v21 = v16;
        if (v20)
        {
          goto LABEL_43;
        }
      }

      else
      {
        if (std::_MinmaxElementLessFunc<RoseSyntheticApertureFiltering::PRRoseSyntheticApertureBatchFilter::spatialBinning(std::vector<RoseSyntheticApertureFiltering::InternalRangeMeas>)::$_1,std::__identity>::operator()[abi:ne200100]<std::__wrap_iter<RoseSyntheticApertureFiltering::InternalRangeMeas const*>>(&v64, &v62))
        {
          v62 = (v19 - 7);
          v18 = v19 - 7;
        }

        v22 = std::_MinmaxElementLessFunc<RoseSyntheticApertureFiltering::PRRoseSyntheticApertureBatchFilter::spatialBinning(std::vector<RoseSyntheticApertureFiltering::InternalRangeMeas>)::$_1,std::__identity>::operator()[abi:ne200100]<std::__wrap_iter<RoseSyntheticApertureFiltering::InternalRangeMeas const*>>(&v65, v63);
        v21 = v19;
        if (v22)
        {
LABEL_43:
          v16 += 14;
          v65 = v16;
          v19 += 14;
          if (v16 == v17)
          {
            goto LABEL_47;
          }

          continue;
        }
      }

      v63[0] = v21;
      goto LABEL_43;
    }

    break;
  }

  if (!std::_MinmaxElementLessFunc<RoseSyntheticApertureFiltering::PRRoseSyntheticApertureBatchFilter::spatialBinning(std::vector<RoseSyntheticApertureFiltering::InternalRangeMeas>)::$_1,std::__identity>::operator()[abi:ne200100]<std::__wrap_iter<RoseSyntheticApertureFiltering::InternalRangeMeas const*>>(&v64, &v62))
  {
    std::_MinmaxElementLessFunc<RoseSyntheticApertureFiltering::PRRoseSyntheticApertureBatchFilter::spatialBinning(std::vector<RoseSyntheticApertureFiltering::InternalRangeMeas>)::$_1,std::__identity>::operator()[abi:ne200100]<std::__wrap_iter<RoseSyntheticApertureFiltering::InternalRangeMeas const*>>(&v64, v63);
    goto LABEL_47;
  }

LABEL_48:
  v23 = cnmatrix::CNMatrixBase<double>::operator()(v16 + 40, 1u);
  v25 = *a1;
  v24 = a1[1];
  v62 = v25;
  v63[0] = v25;
  if (v25 == v24 || (v26 = v25 + 7, v65 = v25 + 7, v25 + 7 == v24))
  {
    v28 = v25;
    goto LABEL_73;
  }

  if (std::_MinmaxElementLessFunc<RoseSyntheticApertureFiltering::PRRoseSyntheticApertureBatchFilter::spatialBinning(std::vector<RoseSyntheticApertureFiltering::InternalRangeMeas>)::$_2,std::__identity>::operator()[abi:ne200100]<std::__wrap_iter<RoseSyntheticApertureFiltering::InternalRangeMeas const*>>(&v65, &v62))
  {
    v62 = (v25 + 7);
    v27 = v25;
  }

  else
  {
    v63[0] = v25 + 7;
    v27 = v25 + 7;
    v26 = v25;
  }

  v28 = v25 + 14;
  if (v25 + 14 == v24)
  {
LABEL_67:
    v25 = v27;
    v28 = v26;
    goto LABEL_73;
  }

  v29 = v25 + 21;
  while (2)
  {
    v64 = v29 - 7;
    v65 = v28 + 7;
    if (v28 + 7 != v24)
    {
      if (std::_MinmaxElementLessFunc<RoseSyntheticApertureFiltering::PRRoseSyntheticApertureBatchFilter::spatialBinning(std::vector<RoseSyntheticApertureFiltering::InternalRangeMeas>)::$_2,std::__identity>::operator()[abi:ne200100]<std::__wrap_iter<RoseSyntheticApertureFiltering::InternalRangeMeas const*>>(&v65, &v64))
      {
        if (std::_MinmaxElementLessFunc<RoseSyntheticApertureFiltering::PRRoseSyntheticApertureBatchFilter::spatialBinning(std::vector<RoseSyntheticApertureFiltering::InternalRangeMeas>)::$_2,std::__identity>::operator()[abi:ne200100]<std::__wrap_iter<RoseSyntheticApertureFiltering::InternalRangeMeas const*>>(&v65, &v62))
        {
          v62 = v29;
          v26 = v29;
        }

        v30 = std::_MinmaxElementLessFunc<RoseSyntheticApertureFiltering::PRRoseSyntheticApertureBatchFilter::spatialBinning(std::vector<RoseSyntheticApertureFiltering::InternalRangeMeas>)::$_2,std::__identity>::operator()[abi:ne200100]<std::__wrap_iter<RoseSyntheticApertureFiltering::InternalRangeMeas const*>>(&v64, v63);
        v31 = v28;
        if (v30)
        {
          goto LABEL_66;
        }
      }

      else
      {
        if (std::_MinmaxElementLessFunc<RoseSyntheticApertureFiltering::PRRoseSyntheticApertureBatchFilter::spatialBinning(std::vector<RoseSyntheticApertureFiltering::InternalRangeMeas>)::$_2,std::__identity>::operator()[abi:ne200100]<std::__wrap_iter<RoseSyntheticApertureFiltering::InternalRangeMeas const*>>(&v64, &v62))
        {
          v62 = (v29 - 7);
          v26 = v29 - 7;
        }

        v32 = std::_MinmaxElementLessFunc<RoseSyntheticApertureFiltering::PRRoseSyntheticApertureBatchFilter::spatialBinning(std::vector<RoseSyntheticApertureFiltering::InternalRangeMeas>)::$_2,std::__identity>::operator()[abi:ne200100]<std::__wrap_iter<RoseSyntheticApertureFiltering::InternalRangeMeas const*>>(&v65, v63);
        v31 = v29;
        if (v32)
        {
LABEL_66:
          v28 += 14;
          v65 = v28;
          v29 += 14;
          if (v28 == v24)
          {
            goto LABEL_67;
          }

          continue;
        }
      }

      v63[0] = v31;
      v27 = v31;
      goto LABEL_66;
    }

    break;
  }

  if (!std::_MinmaxElementLessFunc<RoseSyntheticApertureFiltering::PRRoseSyntheticApertureBatchFilter::spatialBinning(std::vector<RoseSyntheticApertureFiltering::InternalRangeMeas>)::$_2,std::__identity>::operator()[abi:ne200100]<std::__wrap_iter<RoseSyntheticApertureFiltering::InternalRangeMeas const*>>(&v64, &v62))
  {
    if (!std::_MinmaxElementLessFunc<RoseSyntheticApertureFiltering::PRRoseSyntheticApertureBatchFilter::spatialBinning(std::vector<RoseSyntheticApertureFiltering::InternalRangeMeas>)::$_2,std::__identity>::operator()[abi:ne200100]<std::__wrap_iter<RoseSyntheticApertureFiltering::InternalRangeMeas const*>>(&v64, v63))
    {
      v27 = v29 - 7;
    }

    v28 = v26;
  }

  v25 = v27;
LABEL_73:
  v33 = cnmatrix::CNMatrixBase<double>::operator()(v28 + 40, 2u);
  v34 = cnmatrix::CNMatrixBase<double>::operator()(v25 + 40, 2u);
  v35 = 0x6DB6DB6DB6DB6DB7 * (v6 >> 4);
  v63[0] = 0;
  v63[1] = 0;
  v62 = v63;
  v36 = v35;
  if (v35)
  {
    v37 = 0;
    v38 = ceil((v15 - v14) * 4.0);
    v39 = fmaxf(v38, 1.0);
    v40 = ceil((v34 - v33) * 4.0);
    v41 = fmaxf(v40, 1.0);
    do
    {
      v42 = cnmatrix::CNMatrixBase<double>::operator()(&(*a1)[7 * v37 + 2] + 8, 0);
      v43 = cnmatrix::CNMatrixBase<double>::operator()(&(*a1)[7 * v37 + 2] + 8, 1u);
      v44 = cnmatrix::CNMatrixBase<double>::operator()(&(*a1)[7 * v37 + 2] + 8, 2u);
      v45 = ceil((v42 - v14) * 4.0) + -1.0;
      v46 = fmaxf(v45, 0.0);
      v47 = ceil((v43 - v23) * 4.0) + -1.0;
      *&v44 = ceil((v44 - v33) * 4.0) + -1.0;
      v48 = v46 + (fmaxf(*&v44, 0.0) + fmaxf(v47, 0.0) * v41) * v39;
      v49 = v63[0];
      if (!v63[0])
      {
        goto LABEL_83;
      }

      v50 = v63;
      do
      {
        v51 = *(v49 + 7);
        v52 = v51 >= v48;
        v53 = v51 < v48;
        if (v52)
        {
          v50 = v49;
        }

        v49 = *(v49 + v53);
      }

      while (v49);
      if (v50 != v63 && v48 >= *(v50 + 7))
      {
        if (*(&(*a1)[7 * v37] + 1) < *(&(*a1)[7 * *(v50 + 8)] + 1))
        {
          *(v50 + 8) = v37;
        }
      }

      else
      {
LABEL_83:
        v66[0] = v48;
        v66[1] = v37;
        std::__tree<std::__value_type<unsigned int,unsigned int>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,unsigned int>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,unsigned int>>>::__emplace_unique_key_args<unsigned int,std::pair<unsigned int const,unsigned int>>(&v62, v66);
      }

      ++v37;
    }

    while (v37 != v36);
    v54 = v62;
    if (v62 != v63)
    {
      v55 = a2[1];
      do
      {
        v56 = &(*a1)[7 * *(v54 + 8)];
        if (v55 >= a2[2])
        {
          v55 = std::vector<RoseSyntheticApertureFiltering::InternalRangeMeas>::__emplace_back_slow_path<RoseSyntheticApertureFiltering::InternalRangeMeas const&>(a2, &(*a1)[7 * *(v54 + 8)]);
        }

        else
        {
          v57 = *v56;
          v58 = *(v56 + 16);
          *(v55 + 32) = *(v56 + 32);
          *v55 = v57;
          *(v55 + 16) = v58;
          cnmatrix::CNMatrix<3u,1u,double>::CNMatrix(v55 + 40, v56 + 40);
          *(v55 + 104) = *(v56 + 104);
          v55 += 112;
        }

        a2[1] = v55;
        v59 = *(v54 + 1);
        if (v59)
        {
          do
          {
            v60 = v59;
            v59 = *v59;
          }

          while (v59);
        }

        else
        {
          do
          {
            v60 = *(v54 + 2);
            v61 = *v60 == v54;
            v54 = v60;
          }

          while (!v61);
        }

        v54 = v60;
      }

      while (v60 != v63);
    }
  }

  std::__tree<std::__value_type<unsigned int,unsigned int>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,unsigned int>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,unsigned int>>>::destroy(&v62, v63[0]);
}

void sub_2613EE3C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  std::vector<RoseSyntheticApertureFiltering::InternalRangeMeas>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::vector<RoseSyntheticApertureFiltering::InternalRangeMeas>::emplace_back<RoseSyntheticApertureFiltering::InternalRangeMeas const&>(uint64_t *a1, uint64_t a2)
{
  v4 = a1[1];
  if (v4 >= a1[2])
  {
    v7 = std::vector<RoseSyntheticApertureFiltering::InternalRangeMeas>::__emplace_back_slow_path<RoseSyntheticApertureFiltering::InternalRangeMeas const&>(a1, a2);
  }

  else
  {
    v5 = *a2;
    v6 = *(a2 + 16);
    *(v4 + 32) = *(a2 + 32);
    *v4 = v5;
    *(v4 + 16) = v6;
    cnmatrix::CNMatrix<3u,1u,double>::CNMatrix(v4 + 40, a2 + 40);
    *(v4 + 104) = *(a2 + 104);
    v7 = v4 + 112;
    a1[1] = v4 + 112;
  }

  a1[1] = v7;
  return v7 - 112;
}

double RoseSyntheticApertureFiltering::PRRoseSyntheticApertureBatchFilter::estimateTargetOnStraightPath(uint64_t a1, uint64_t *a2, void *a3)
{
  memset(v41, 0, sizeof(v41));
  v3 = *a2;
  if (a2[1] == *a2)
  {
    v7 = 0.0;
  }

  else
  {
    v6 = 0;
    v7 = 0.0;
    do
    {
      v38 = 0x100000003;
      v36 = &unk_2873C40E8;
      v37 = xmmword_261415AA0;
      v39 = &v40;
      v33 = 0x100000003;
      v31 = &unk_2873C40E8;
      v32 = xmmword_261415AA0;
      v34 = &v35;
      v8 = 112 * v6;
      v9 = *a3 + 112 * v6;
      v10 = *(v9 + 8);
      v11 = v3 + 112 * v6;
      v12 = *(v11 + 8);
      v13 = 3.14159265 - acos(((v12 + 0.1) * (v12 + 0.1) + (v10 - v12) * (v10 - v12) - (v10 + -0.1) * (v10 + -0.1)) / ((v12 + 0.1) * (v10 - v12 + v10 - v12)));
      if (v13 <= 1.0)
      {
        v14 = 1.0;
      }

      else
      {
        v14 = 1.0 / v13;
      }

      if (v10 <= v12)
      {
        v15 = v9;
      }

      else
      {
        v15 = v11;
      }

      cnmatrix::CNMatrixBase<double>::operator=(&v36, v15 + 40);
      v16 = *a3 + v8;
      if (*(v16 + 8) <= *(*a2 + v8 + 8))
      {
        v16 = *a2 + v8;
      }

      cnmatrix::CNMatrixBase<double>::operator=(&v31, v16 + 40);
      v17 = *a2 + v8;
      v18 = *a3 + v8;
      if (*(v17 + 8) >= *(v18 + 8))
      {
        v19 = *(v17 + 8);
      }

      else
      {
        v19 = *(v18 + 8);
      }

      v28 = 0x100000003;
      v26 = &unk_2873C40E8;
      v27 = xmmword_261415AA0;
      v29 = &v30;
      cnmatrix::Subtract<double>(&v36, &v31, &v26);
      v54 = 0x100000003;
      v52 = &unk_2873C40E8;
      v53 = xmmword_261415AA0;
      v55 = &v56;
      v49 = 0x100000134;
      v48 = xmmword_261415AD0;
      v47 = &unk_2873C41B8;
      v50 = v51;
      v44 = 0x100000003;
      v43 = xmmword_261415AA0;
      v42 = &unk_2873C40E8;
      v45 = &v46;
      cnmatrix::Norm<double>(&v26, &v52, &v47, &v42, "2");
      v21 = v20;
      v49 = 0x100000003;
      v48 = xmmword_261415AA0;
      v47 = &unk_2873C40E8;
      v50 = v51;
      cnmatrix::Subtract<double>(&v36, &v31, &v47);
      v22 = 0;
      v7 = v7 + v14;
      do
      {
        v23 = *cnmatrix::CNMatrixBase<double>::operator()(&v31, v22);
        *&v41[v22] = *&v41[v22] + v14 * (v23 + v19 * *cnmatrix::CNMatrixBase<double>::operator()(&v47, v22) / v21);
        ++v22;
      }

      while (v22 != 3);
      ++v6;
      v3 = *a2;
    }

    while (0x6DB6DB6DB6DB6DB7 * ((a2[1] - *a2) >> 4) > v6);
  }

  for (i = 0; i != 3; ++i)
  {
    *&v41[i] = *&v41[i] / v7;
  }

  return *v41;
}

void RoseSyntheticApertureFiltering::PRRoseSyntheticApertureBatchFilter::computeStraightPathSolution(RoseSyntheticApertureFiltering::PRRoseSyntheticApertureBatchFilter *this)
{
  v106[308] = *MEMORY[0x277D85DE8];
  v1 = *(this + 85);
  v2 = *(this + 84);
  v3 = 0x6DB6DB6DB6DB6DB7 * ((v1 - v2) >> 4);
  if (v3 >= 4)
  {
    v4 = this;
    v5 = *(this + 91);
    v6 = *(this + 90);
    if (v5 != v6)
    {
      v7 = v5 - 72;
      do
      {
        *(v5 - 72) = &unk_2873C4140;
        v7 -= 112;
        v5 -= 112;
      }

      while (v5 != v6);
    }

    *(this + 91) = v6;
    memset(v92, 0, sizeof(v92));
    std::vector<RoseSyntheticApertureFiltering::InternalRangeMeas>::__init_with_size[abi:ne200100]<RoseSyntheticApertureFiltering::InternalRangeMeas*,RoseSyntheticApertureFiltering::InternalRangeMeas*>(v92, v2, v1, v3);
    RoseSyntheticApertureFiltering::PRRoseSyntheticApertureBatchFilter::spatialBinning(v92, buf);
    v8 = (v4 + 720);
    std::vector<RoseSyntheticApertureFiltering::InternalRangeMeas>::__vdeallocate(v4 + 90);
    *(v4 + 45) = *buf;
    *(v4 + 92) = *&buf[16];
    memset(buf, 0, sizeof(buf));
    v98 = buf;
    std::vector<RoseSyntheticApertureFiltering::InternalRangeMeas>::__destroy_vector::operator()[abi:ne200100](&v98);
    v98 = v92;
    std::vector<RoseSyntheticApertureFiltering::InternalRangeMeas>::__destroy_vector::operator()[abi:ne200100](&v98);
    v89 = 0;
    v90 = 0;
    v91 = 0;
    v9 = *(v4 + 91);
    if (v9 == *(v4 + 90))
    {
      v27 = *(v4 + 91);
    }

    else
    {
      v10 = 0;
      v11 = 0;
      v12 = &unk_2873C40E8;
      v13 = v88;
      v14 = v102;
      v9 = *(v4 + 90);
      do
      {
        v15 = *(v4 + 85) - 72;
        v86 = 0x100000003;
        v84 = v12;
        v85 = xmmword_261415AA0;
        v87 = v13;
        cnmatrix::Subtract<double>(v9 + v10 * 16 + 40, v15, &v84);
        v100 = 0x100000003;
        v99 = xmmword_261415AA0;
        v98 = &unk_2873C40E8;
        v101 = v14;
        v104 = 0x100000134;
        *&buf[8] = xmmword_261415AD0;
        *buf = &unk_2873C41B8;
        v105 = v106;
        v95 = 0x100000003;
        v94 = xmmword_261415AA0;
        v93 = &unk_2873C40E8;
        v96 = v97;
        cnmatrix::Norm<double>(&v84, &v98, buf, &v93, "2");
        if (v16 < 2.0)
        {
          v17 = v14;
          v18 = v13;
          v19 = v12;
          v20 = v4;
          v21 = *v8;
          v22 = &(*v8)[v10];
          v23 = v90;
          if (v90 >= v91)
          {
            v26 = std::vector<RoseSyntheticApertureFiltering::InternalRangeMeas>::__emplace_back_slow_path<RoseSyntheticApertureFiltering::InternalRangeMeas&>(&v89, v22);
          }

          else
          {
            v24 = *v22;
            v25 = v22[1];
            *(v90 + 32) = *(v22 + 4);
            *v23 = v24;
            *(v23 + 16) = v25;
            cnmatrix::CNMatrix<3u,1u,double>::CNMatrix(v23 + 40, v22 + 40);
            *(v23 + 104) = DWORD2(v21[v10 + 6]);
            v26 = v23 + 112;
          }

          v4 = v20;
          v90 = v26;
          v12 = v19;
          v13 = v18;
          v14 = v17;
        }

        ++v11;
        v27 = *(v4 + 91);
        v9 = *(v4 + 90);
        v10 += 7;
      }

      while (0x6DB6DB6DB6DB6DB7 * ((v27 - v9) >> 4) > v11);
    }

    if (v8 != &v89)
    {
      std::vector<RoseSyntheticApertureFiltering::InternalRangeMeas>::__assign_with_size[abi:ne200100]<RoseSyntheticApertureFiltering::InternalRangeMeas*,RoseSyntheticApertureFiltering::InternalRangeMeas*>(v8, v89, v90, 0x6DB6DB6DB6DB6DB7 * ((v90 - v89) >> 4));
      v27 = *(v4 + 91);
      v9 = *(v4 + 90);
    }

    v28 = 0x6DB6DB6DB6DB6DB7 * ((v27 - v9) >> 4);
    v29 = v28 - 2;
    if (v28 >= 2)
    {
      if (v28 >= 4)
      {
        v29 = 2;
      }

      v30 = ((v28 - 1) * v28) >> 1;
      if (v29 == 1)
      {
        v30 = v28;
      }

      if (v29)
      {
        v31 = v30;
      }

      else
      {
        v31 = 1;
      }

      if (v28 >= 5)
      {
        v70 = v31;
        v69 = v4;
        v32 = 0;
        v81 = 0;
        v82 = 0;
        v83 = 0;
        v78 = 0;
        v79 = 0;
        v71 = (v28 - 1);
        v72 = v28 & 0x7FFFFFFF;
        v75 = v72 - 1;
        v74 = 112;
        v80 = 0;
        do
        {
          v73 = v32 + 1;
          if (v32 + 1 < v72)
          {
            v33 = v74;
            v34 = v75;
            do
            {
              v35 = (*v8 + v33);
              v36 = v35[1];
              v37 = &(*v8)[7 * v32];
              v38 = *(v37 + 8);
              if (vabdd_f64(3.14159265, acos(((v38 + 0.1) * (v38 + 0.1) + (v36 - v38) * (v36 - v38) - (v36 + -0.1) * (v36 + -0.1)) / ((v38 + 0.1) * (v36 - v38 + v36 - v38)))) < 1.22173048)
              {
                v86 = 0x100000003;
                v84 = &unk_2873C40E8;
                v85 = xmmword_261415AA0;
                v87 = v88;
                cnmatrix::Subtract<double>(v37 + 40, (v35 + 5), &v84);
                v100 = 0x100000003;
                v99 = xmmword_261415AA0;
                v98 = &unk_2873C40E8;
                v101 = v102;
                v104 = 0x100000134;
                *&buf[8] = xmmword_261415AD0;
                *buf = &unk_2873C41B8;
                v105 = v106;
                v95 = 0x100000003;
                v94 = xmmword_261415AA0;
                v93 = &unk_2873C40E8;
                v96 = v97;
                cnmatrix::Norm<double>(&v84, &v98, buf, &v93, "2");
                if (vabdd_f64(v39, fmax(v38, v36) - fmin(v38, v36)) < 0.1414)
                {
                  v40 = &(*v8)[7 * v32];
                  v41 = *v8 + v33;
                  v86 = 0x100000003;
                  v84 = &unk_2873C40E8;
                  v85 = xmmword_261415AA0;
                  v87 = v88;
                  cnmatrix::Subtract<double>(v40 + 40, (v41 + 40), &v84);
                  v100 = 0x100000003;
                  v99 = xmmword_261415AA0;
                  v98 = &unk_2873C40E8;
                  v101 = v102;
                  v104 = 0x100000134;
                  *&buf[8] = xmmword_261415AD0;
                  *buf = &unk_2873C41B8;
                  v105 = v106;
                  v95 = 0x100000003;
                  v94 = xmmword_261415AA0;
                  v93 = &unk_2873C40E8;
                  v96 = v97;
                  cnmatrix::Norm<double>(&v84, &v98, buf, &v93, "2");
                  if (v42 > 0.25)
                  {
                    v43 = &(*v8)[7 * v32];
                    v44 = v82;
                    if (v82 >= v83)
                    {
                      v47 = std::vector<RoseSyntheticApertureFiltering::InternalRangeMeas>::__emplace_back_slow_path<RoseSyntheticApertureFiltering::InternalRangeMeas&>(&v81, &(*v8)[7 * v32]);
                    }

                    else
                    {
                      v45 = *v43;
                      v46 = *(v43 + 16);
                      *(v82 + 32) = *(v43 + 32);
                      *v44 = v45;
                      *(v44 + 16) = v46;
                      cnmatrix::CNMatrix<3u,1u,double>::CNMatrix(v44 + 40, v43 + 40);
                      *(v44 + 104) = *(v43 + 104);
                      v47 = v44 + 112;
                    }

                    v82 = v47;
                    v48 = *v8;
                    v49 = (*v8 + v33);
                    v50 = v79;
                    if (v79 >= v80)
                    {
                      v53 = std::vector<RoseSyntheticApertureFiltering::InternalRangeMeas>::__emplace_back_slow_path<RoseSyntheticApertureFiltering::InternalRangeMeas&>(&v78, v49);
                    }

                    else
                    {
                      v51 = *v49;
                      v52 = v49[1];
                      *(v79 + 32) = *(v49 + 4);
                      *v50 = v51;
                      *(v50 + 16) = v52;
                      cnmatrix::CNMatrix<3u,1u,double>::CNMatrix(v50 + 40, v49 + 40);
                      *(v50 + 104) = *(v48 + v33 + 104);
                      v53 = v50 + 112;
                    }

                    v79 = v53;
                  }
                }
              }

              v33 += 112;
              --v34;
            }

            while (v34);
          }

          v74 += 112;
          --v75;
          ++v32;
        }

        while (v73 != v71);
        v54 = 0x6DB6DB6DB6DB6DB7 * ((v82 - v81) >> 4);
        if (v54 > 5 && ((v54 / v70) * 100.0) >= 70.0)
        {
          *(v69 + 929) = 1;
          *(v69 + 107) = *(v69 + 74);
          cnmatrix::CNMatrixBase<double>::operator=(v69 + 864, v69 + 168);
          v55 = *(v69 + 56);
          if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
          {
            v56 = *(v69 + 74);
            *buf = 134217984;
            *&buf[4] = v56;
            _os_log_impl(&dword_2613DF000, v55, OS_LOG_TYPE_DEFAULT, "Straight path solution generated at %f s", buf, 0xCu);
          }

          *(v69 + 24) = 5;
          *(v69 + 100) = 1;
          *(v69 + 26) = 2;
          *(v69 + 108) = 0;
          *(v69 + 17) = 0;
          memset(v77, 0, sizeof(v77));
          std::vector<RoseSyntheticApertureFiltering::InternalRangeMeas>::__init_with_size[abi:ne200100]<RoseSyntheticApertureFiltering::InternalRangeMeas*,RoseSyntheticApertureFiltering::InternalRangeMeas*>(v77, v81, v82, 0x6DB6DB6DB6DB6DB7 * ((v82 - v81) >> 4));
          memset(v76, 0, sizeof(v76));
          v57 = std::vector<RoseSyntheticApertureFiltering::InternalRangeMeas>::__init_with_size[abi:ne200100]<RoseSyntheticApertureFiltering::InternalRangeMeas*,RoseSyntheticApertureFiltering::InternalRangeMeas*>(v76, v78, v79, 0x6DB6DB6DB6DB6DB7 * ((v79 - v78) >> 4));
          v58 = RoseSyntheticApertureFiltering::PRRoseSyntheticApertureBatchFilter::estimateTargetOnStraightPath(v57, v77, v76);
          v60 = v59;
          v62 = v61;
          *buf = v76;
          std::vector<RoseSyntheticApertureFiltering::InternalRangeMeas>::__destroy_vector::operator()[abi:ne200100](buf);
          *buf = v77;
          std::vector<RoseSyntheticApertureFiltering::InternalRangeMeas>::__destroy_vector::operator()[abi:ne200100](buf);
          v63 = *(v69 + 14);
          *(v69 + 15) = v63;
          v64 = *(v69 + 16);
          if (v63 >= v64)
          {
            v65 = 0xCF3CF3CF3CF3CF3DLL * ((v64 - v63) >> 3);
            v66 = 2 * v65;
            if (2 * v65 <= 1)
            {
              v66 = 1;
            }

            if (v65 >= 0xC30C30C30C30C3)
            {
              v67 = 0x186186186186186;
            }

            else
            {
              v67 = v66;
            }

            std::__allocate_at_least[abi:ne200100]<std::allocator<RoseSyntheticApertureFiltering::BatchSolutionParticle>>(v69 + 112, v67);
          }

          *v63 = v58;
          *(v63 + 8) = v60;
          *(v63 + 16) = v62;
          *(v63 + 32) = 0;
          *(v63 + 40) = 0;
          *(v63 + 24) = 0x3F847AE147AE147CLL;
          *(v63 + 48) = xmmword_261415D80;
          *(v63 + 64) = xmmword_261415D90;
          *(v63 + 80) = 0x3FF0000000000000;
          *(v63 + 88) = 0u;
          *(v63 + 104) = 0u;
          *(v63 + 120) = 0u;
          *(v63 + 136) = 0u;
          *(v63 + 160) = 2;
          *(v63 + 152) = 0;
          *(v69 + 15) = v63 + 168;
        }

        *buf = &v78;
        std::vector<RoseSyntheticApertureFiltering::InternalRangeMeas>::__destroy_vector::operator()[abi:ne200100](buf);
        *buf = &v81;
        std::vector<RoseSyntheticApertureFiltering::InternalRangeMeas>::__destroy_vector::operator()[abi:ne200100](buf);
      }
    }

    *buf = &v89;
    std::vector<RoseSyntheticApertureFiltering::InternalRangeMeas>::__destroy_vector::operator()[abi:ne200100](buf);
  }

  v68 = *MEMORY[0x277D85DE8];
}

void sub_2613EF3D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, char a34, uint64_t a35, uint64_t a36, void **a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45)
{
  a37 = &a31;
  std::vector<RoseSyntheticApertureFiltering::InternalRangeMeas>::__destroy_vector::operator()[abi:ne200100](&a37);
  a37 = &a34;
  std::vector<RoseSyntheticApertureFiltering::InternalRangeMeas>::__destroy_vector::operator()[abi:ne200100](&a37);
  a37 = &a45;
  std::vector<RoseSyntheticApertureFiltering::InternalRangeMeas>::__destroy_vector::operator()[abi:ne200100](&a37);
  _Unwind_Resume(a1);
}

uint64_t RoseSyntheticApertureFiltering::PRRoseSyntheticApertureBatchFilter::setCurrentRangeFilterEstimate(uint64_t this, double a2, char a3)
{
  *(this + 432) = a2;
  *(this + 440) = a3;
  return this;
}

void RoseSyntheticApertureFiltering::PRRoseSyntheticApertureBatchFilter::addMeasurement(RoseSyntheticApertureFiltering::PRRoseSyntheticApertureBatchFilter *this@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v215 = *MEMORY[0x277D85DE8];
  if (*(this + 934) == 1)
  {
    *(this + 934) = 0;
    if (*(this + 84) != *(this + 85))
    {
      RoseSyntheticApertureFiltering::PRRoseSyntheticApertureBatchFilter::reinitFilter(this);
    }
  }

  *(this + 29) = *(a2 + 104);
  v197 = 0x100000003;
  v196 = xmmword_261415AA0;
  v195 = &unk_2873C40E8;
  v198 = &v199;
  cnmatrix::FastResize<double>(&v195, 3, 1);
  cnmatrix::CNMatrixBase<double>::WriteValue(&v195, 0.0);
  v192 = 0x100000004;
  v191 = xmmword_261415AC0;
  v190 = &unk_2873C4170;
  v193 = &v194;
  cnmatrix::FastResize<double>(&v190, 4, 1);
  cnmatrix::CNMatrixBase<double>::WriteValue(&v190, 0.0);
  for (i = 0; i != 3; ++i)
  {
    v6 = a2 + 8 * i;
    v7 = *(v6 + 96);
    *cnmatrix::CNMatrixBase<double>::operator()(&v195, i) = v7;
    v8 = *(v6 + 120);
    *cnmatrix::CNMatrixBase<double>::operator()(&v190, i) = v8;
  }

  v9 = *(a2 + 144);
  *cnmatrix::CNMatrixBase<double>::operator()(&v190, 3u) = v9;
  RoseSyntheticApertureFiltering::quatn2rot(&v190, v189);
  buf[3] = 0x100000003;
  *&buf[1] = xmmword_261415AA0;
  buf[0] = &unk_2873C40E8;
  *&v206 = &v206 + 8;
  cnmatrix::Multiply<double>(v189, this + 456, buf);
  v186 = 0x100000003;
  v185 = xmmword_261415AA0;
  v184 = &unk_2873C40E8;
  v187 = &v188;
  cnmatrix::Add<double>(&v195, buf, &v184);
  cnmatrix::CNMatrixBase<double>::operator=(this + 168, &v195);
  cnmatrix::CNMatrixBase<double>::operator=(this + 240, &v190);
  cnmatrix::CNMatrixBase<double>::operator=(this + 312, v189);
  v11 = *a2;
  *(this + 74) = *a2;
  if (*(this + 928) == 1)
  {
    v12 = *(this + 76);
    if (v11 - v12 > 10.0)
    {
      *(this + 928) = 0;
      v13 = *(this + 56);
      v10 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
      if (v10)
      {
        LODWORD(buf[0]) = 134218240;
        *(buf + 4) = v12;
        WORD2(buf[1]) = 2048;
        *(&buf[1] + 6) = v11;
        _os_log_impl(&dword_2613DF000, v13, OS_LOG_TYPE_DEFAULT, "AoA Solution from AoA at %f s is no longer valid - current time is %f s", buf, 0x16u);
      }
    }
  }

  if (*(this + 929) == 1)
  {
    v14 = *(this + 74) - *(this + 107);
    if (v14 >= 2.0 && (*(this + 54) < 2.0 || *(this + 440) != 1))
    {
      goto LABEL_17;
    }

    if (v14 >= 5.0)
    {
      v157 = 0x100000003;
      v155 = &unk_2873C40E8;
      v156 = xmmword_261415AA0;
      v158 = v159;
      cnmatrix::Subtract<double>(&v184, this + 864, &v155);
      *(&v171[1] + 1) = 0x100000003;
      *(v171 + 8) = xmmword_261415AA0;
      *&v171[0] = &unk_2873C40E8;
      *&v172 = &v172 + 8;
      buf[3] = 0x100000134;
      *&buf[1] = xmmword_261415AD0;
      buf[0] = &unk_2873C41B8;
      *&v206 = &v206 + 8;
      v162 = 0x100000003;
      v161 = xmmword_261415AA0;
      v160 = &unk_2873C40E8;
      v163 = v164;
      cnmatrix::Norm<double>(&v155, v171, buf, &v160, "2");
      if (v15 > 1.0)
      {
LABEL_17:
        *(this + 929) = 0;
        v16 = *(this + 56);
        v10 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
        if (v10)
        {
          v17 = *(this + 107);
          v18 = *(this + 74);
          LODWORD(buf[0]) = 134218240;
          *(buf + 4) = v17;
          WORD2(buf[1]) = 2048;
          *(&buf[1] + 6) = v18;
          _os_log_impl(&dword_2613DF000, v16, OS_LOG_TYPE_DEFAULT, "Straight path solution at %f s is no longer valid - current time is %f s", buf, 0x16u);
        }
      }
    }
  }

  v19 = *(a2 + 16);
  if (v19 <= 0.0 || *(a2 + 8) < -1.0)
  {
    v20 = *(this + 56);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      RoseSyntheticApertureFiltering::PRRoseSyntheticApertureBatchFilter::addMeasurement(a2, v20, v19);
    }

    goto LABEL_150;
  }

  v21 = *(this + 85);
  if (v21 != *(this + 84))
  {
    v157 = 0x100000003;
    v155 = &unk_2873C40E8;
    v156 = xmmword_261415AA0;
    v158 = v159;
    cnmatrix::Subtract<double>(&v184, v21 - 72, &v155);
    *(&v171[1] + 1) = 0x100000003;
    *(v171 + 8) = xmmword_261415AA0;
    *&v171[0] = &unk_2873C40E8;
    *&v172 = &v172 + 8;
    buf[3] = 0x100000134;
    *&buf[1] = xmmword_261415AD0;
    buf[0] = &unk_2873C41B8;
    *&v206 = &v206 + 8;
    v162 = 0x100000003;
    v161 = xmmword_261415AA0;
    v160 = &unk_2873C40E8;
    v163 = v164;
    cnmatrix::Norm<double>(&v155, v171, buf, &v160, "2");
    v23 = v22;
    v24 = *(a2 + 8);
    v25 = *(v21 - 104);
    v26 = v24 - v25;
    if (v24 - v25 <= 0.0)
    {
      if ((fabs(v26) - v22) / *(a2 + 16) <= 6.0)
      {
        if (*(this + 941) == 1)
        {
          *(this + 941) = 0;
          v62 = *(this + 56);
          v10 = os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT);
          if (v10)
          {
            LOWORD(buf[0]) = 0;
            _os_log_impl(&dword_2613DF000, v62, OS_LOG_TYPE_DEFAULT, "Did not observe a second consecutive nLoS->LoS event after the first one - marked as a false event due to packet collision", buf, 2u);
          }
        }
      }

      else
      {
        v31 = *(this + 56);
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          LODWORD(buf[0]) = 134218496;
          *(buf + 4) = v25;
          WORD2(buf[1]) = 2048;
          *(&buf[1] + 6) = v24;
          HIWORD(buf[2]) = 2048;
          *&buf[3] = v23;
          _os_log_error_impl(&dword_2613DF000, v31, OS_LOG_TYPE_ERROR, "nLoS->LoS event detected by the batch filter: Previous range %f m, Current range %f m, Distance travelled %f m", buf, 0x20u);
        }

        v32 = *(this + 941);
        v33 = *(this + 56);
        v34 = os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT);
        if ((v32 & 1) == 0)
        {
          if (v34)
          {
            LOWORD(buf[0]) = 0;
            _os_log_impl(&dword_2613DF000, v33, OS_LOG_TYPE_DEFAULT, "fRangeDropped is false, buffering this nLoS->LoS event for now", buf, 2u);
          }

          *(this + 941) = 1;
          v63 = RoseSyntheticApertureFiltering::range2deweight(v34, *(a2 + 8) / *(this + 77));
          v64 = *a2;
          v65 = *(a2 + 8);
          v66 = *(a2 + 16);
          v67 = *(a2 + 24);
          *buf = v64;
          *&buf[1] = v65;
          *&buf[2] = v65 / (v63 * v66);
          *&buf[3] = v66;
          *&v206 = v63;
          cnmatrix::CNMatrix<3u,1u,double>::CNMatrix(&v206 + 8, &v184);
          DWORD2(v210) = v67;
          *(this + 97) = v206;
          v68 = *&buf[2];
          *(this + 744) = *buf;
          *(this + 760) = v68;
          cnmatrix::CNMatrixBase<double>::operator=(this + 784, &v206 + 8);
          *(this + 212) = DWORD2(v210);
          goto LABEL_137;
        }

        if (v34)
        {
          LOWORD(buf[0]) = 0;
          _os_log_impl(&dword_2613DF000, v33, OS_LOG_TYPE_DEFAULT, "fRangeDropped is true, detected two consecutive nLoS->LoS events", buf, 2u);
        }

        std::vector<RoseSyntheticApertureFiltering::InternalRangeMeas>::emplace_back<RoseSyntheticApertureFiltering::InternalRangeMeas const&>(this + 84, this + 744);
        *(this + 941) = 0;
        __src = 0;
        v151 = 0uLL;
        v35 = *(this + 84);
        if (v35 != *(this + 85))
        {
          do
          {
            v157 = 0x100000003;
            v155 = &unk_2873C40E8;
            v156 = xmmword_261415AA0;
            v158 = v159;
            cnmatrix::Subtract<double>(&v184, v35 + 40, &v155);
            *(&v171[1] + 1) = 0x100000003;
            *(v171 + 8) = xmmword_261415AA0;
            *&v171[0] = &unk_2873C40E8;
            *&v172 = &v172 + 8;
            buf[3] = 0x100000134;
            *&buf[1] = xmmword_261415AD0;
            buf[0] = &unk_2873C41B8;
            *&v206 = &v206 + 8;
            v162 = 0x100000003;
            v161 = xmmword_261415AA0;
            v160 = &unk_2873C40E8;
            v163 = v164;
            cnmatrix::Norm<double>(&v155, v171, buf, &v160, "2");
            if ((*(v35 + 8) - *(a2 + 8) - v36) / *(a2 + 16) <= 6.0)
            {
              v35 += 112;
              v41 = *(this + 85);
            }

            else
            {
              v37 = *(this + 87);
              v38 = *(this + 88) - v37;
              if (v38)
              {
                v39 = 0;
                v40 = 0x4EC4EC4EC4EC4EC5 * (v38 >> 4);
                while (*v37 != *v35)
                {
                  ++v39;
                  v37 += 26;
                  if (v40 <= v39)
                  {
                    goto LABEL_57;
                  }
                }

                v42 = v151;
                if (v151 >= *(&v151 + 1))
                {
                  v44 = __src;
                  v45 = v151 - __src;
                  v46 = (v151 - __src) >> 3;
                  v47 = v46 + 1;
                  if ((v46 + 1) >> 61)
                  {
                    std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
                  }

                  v48 = *(&v151 + 1) - __src;
                  if ((*(&v151 + 1) - __src) >> 2 > v47)
                  {
                    v47 = v48 >> 2;
                  }

                  v49 = v48 >= 0x7FFFFFFFFFFFFFF8;
                  v50 = 0x1FFFFFFFFFFFFFFFLL;
                  if (!v49)
                  {
                    v50 = v47;
                  }

                  if (v50)
                  {
                    std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(&__src, v50);
                  }

                  *(8 * v46) = v39;
                  v43 = 8 * v46 + 8;
                  memcpy(0, v44, v45);
                  v51 = __src;
                  __src = 0;
                  v151 = v43;
                  if (v51)
                  {
                    operator delete(v51);
                  }
                }

                else
                {
                  *v151 = v39;
                  v43 = v42 + 8;
                }

                *&v151 = v43;
              }

LABEL_57:
              if (*(this + 928) == 1)
              {
                v52 = *(this + 76);
                if (*v35 == v52)
                {
                  *(this + 928) = 0;
                  v53 = *(this + 56);
                  if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
                  {
                    LODWORD(buf[0]) = 134217984;
                    *(buf + 4) = v52;
                    _os_log_impl(&dword_2613DF000, v53, OS_LOG_TYPE_DEFAULT, "AoA Solution from AoA at %f s is no longer valid due to multipath", buf, 0xCu);
                  }
                }
              }

              v54 = *(this + 56);
              if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
              {
                v60 = *v35;
                v61 = *(v35 + 8);
                LODWORD(buf[0]) = 134218240;
                *(buf + 4) = v60;
                WORD2(buf[1]) = 2048;
                *(&buf[1] + 6) = v61;
                _os_log_error_impl(&dword_2613DF000, v54, OS_LOG_TYPE_ERROR, "Removing measurement at time %f s with range %f m", buf, 0x16u);
              }

              v55 = *(this + 85);
              if (v35 + 112 == v55)
              {
                v41 = v35;
              }

              else
              {
                v56 = v35;
                do
                {
                  v57 = v56;
                  v58 = *(v56 + 128);
                  *v56 = *(v56 + 112);
                  *(v56 + 16) = v58;
                  *(v56 + 32) = *(v56 + 144);
                  cnmatrix::CNMatrixBase<double>::operator=(v56 + 40, v56 + 152);
                  *(v57 + 104) = *(v57 + 216);
                  v56 = v57 + 112;
                }

                while (v57 + 224 != v55);
                v41 = v57 + 112;
                v55 = *(this + 85);
              }

              if (v55 != v41)
              {
                v59 = v55 - 72;
                do
                {
                  *(v55 - 72) = &unk_2873C4140;
                  v59 -= 112;
                  v55 -= 112;
                }

                while (v55 != v41);
              }

              *(this + 85) = v41;
            }
          }

          while (v35 != v41);
          v69 = v151;
          if (v151 != __src)
          {
            v70 = *(this + 88);
            do
            {
              v71 = *(v69 - 1);
              v69 -= 8;
              std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<RoseSyntheticApertureFiltering::InternalAoAMeas *,RoseSyntheticApertureFiltering::InternalAoAMeas *,RoseSyntheticApertureFiltering::InternalAoAMeas *>(buf, (*(this + 87) + 208 * v71 + 208), v70, (*(this + 87) + 208 * v71));
              v70 = v72;
              v73 = *(this + 88);
              if (v73 != v72)
              {
                v74 = v73 - 11;
                do
                {
                  *(v73 - 14) = &unk_2873C4140;
                  *(v73 - 22) = &unk_2873C4140;
                  v74 -= 13;
                  v73 -= 13;
                }

                while (v73 != v72);
              }

              *(this + 88) = v72;
            }

            while (v69 != __src);
          }
        }

        RoseSyntheticApertureFiltering::PRRoseSyntheticApertureBatchFilter::resetFilter(this);
        v76 = *(this + 84);
        v77 = *(this + 85);
        if (v76 == v77)
        {
          *(this + 77) = 0x3FF0000000000000;
        }

        else
        {
          v78 = v76 + 14;
          v79 = *(this + 84);
          if (v76 + 14 != v77)
          {
            v79 = *(this + 84);
            do
            {
              if (v78[1] < v79[1])
              {
                v79 = v78;
              }

              v78 += 14;
            }

            while (v78 != v77);
          }

          v80 = fmax(v79[1], 1.0);
          if (v80 != *(this + 77))
          {
            *(this + 77) = v80;
            do
            {
              v81 = RoseSyntheticApertureFiltering::range2deweight(v75, v76[1] / *(this + 77));
              v76[4] = v81;
              v76[2] = v76[1] / (v81 * v76[3]);
              v76 += 14;
            }

            while (v76 != v77);
          }
        }

        v10 = __src;
        if (__src)
        {
          *&v151 = __src;
          operator delete(__src);
        }
      }
    }

    else
    {
      if (*(this + 941) == 1)
      {
        *(this + 941) = 0;
        v27 = *(this + 56);
        v10 = os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT);
        if (v10)
        {
          LOWORD(buf[0]) = 0;
          _os_log_impl(&dword_2613DF000, v27, OS_LOG_TYPE_DEFAULT, "Did not observe a second consecutive nLoS->LoS event after the first one - marked as a false event due to packet collision", buf, 2u);
        }
      }

      if ((v26 - v23) / *(a2 + 16) > 6.0)
      {
        v28 = *(this + 56);
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          v29 = *(v21 - 104);
          v30 = *(a2 + 8);
          LODWORD(buf[0]) = 134218496;
          *(buf + 4) = v29;
          WORD2(buf[1]) = 2048;
          *(&buf[1] + 6) = v30;
          HIWORD(buf[2]) = 2048;
          *&buf[3] = v23;
          _os_log_error_impl(&dword_2613DF000, v28, OS_LOG_TYPE_ERROR, "LoS->nLoS event detected by the batch filter: Previous range %f m, Current range %f m, Distance travelled %f m", buf, 0x20u);
        }

        goto LABEL_137;
      }
    }
  }

  v82 = *(this + 84);
  v83 = *(this + 85);
  v84 = *(a2 + 8);
  if (v82 == v83)
  {
    v89 = fmax(v84, 1.0);
    *(this + 77) = v89;
    v90 = *(this + 56);
    v10 = os_log_type_enabled(v90, OS_LOG_TYPE_DEFAULT);
    if (v10)
    {
      LODWORD(buf[0]) = 134217984;
      *(buf + 4) = v89;
      _os_log_impl(&dword_2613DF000, v90, OS_LOG_TYPE_DEFAULT, "Minimum observed range initialized to %f m", buf, 0xCu);
    }
  }

  else
  {
    v85 = *(this + 77);
    if (v84 < v85 && v85 > 1.0)
    {
      v86 = fmax(v84, 1.0);
      *(this + 77) = v86;
      v87 = *(this + 56);
      v10 = os_log_type_enabled(v87, OS_LOG_TYPE_DEFAULT);
      if (v10)
      {
        LODWORD(buf[0]) = 134217984;
        *(buf + 4) = v86;
        _os_log_impl(&dword_2613DF000, v87, OS_LOG_TYPE_DEFAULT, "Minimum observed range changed to %f m", buf, 0xCu);
        v82 = *(this + 84);
        v83 = *(this + 85);
      }

      while (v82 != v83)
      {
        v88 = RoseSyntheticApertureFiltering::range2deweight(v10, v82[1] / *(this + 77));
        v82[4] = v88;
        v82[2] = v82[1] / (v88 * v82[3]);
        v82 += 14;
      }
    }
  }

  v91 = RoseSyntheticApertureFiltering::range2deweight(v10, *(a2 + 8) / *(this + 77));
  v92 = *(a2 + 8);
  v93 = *(a2 + 16);
  v94 = *(a2 + 24);
  buf[0] = *a2;
  *&buf[1] = v92;
  *&buf[2] = v92 / (v91 * v93);
  *&buf[3] = v93;
  *&v206 = v91;
  cnmatrix::CNMatrix<3u,1u,double>::CNMatrix(&v206 + 8, &v184);
  DWORD2(v210) = v94;
  v95 = *(this + 85);
  if (v95 >= *(this + 86))
  {
    v98 = std::vector<RoseSyntheticApertureFiltering::InternalRangeMeas>::__emplace_back_slow_path<RoseSyntheticApertureFiltering::InternalRangeMeas>(this + 84, buf);
  }

  else
  {
    v96 = *buf;
    v97 = *&buf[2];
    *(v95 + 32) = v206;
    *v95 = v96;
    *(v95 + 16) = v97;
    cnmatrix::CNMatrix<3u,1u,double>::CNMatrix(v95 + 40, &v206 + 8);
    *(v95 + 104) = DWORD2(v210);
    v98 = v95 + 112;
    *(this + 85) = v95 + 112;
  }

  *(this + 85) = v98;
  if (*(a2 + 88) == 1)
  {
    if (*(a2 + 80) == 1)
    {
      v99 = *(a2 + 72);
      if (v99 > 1.1)
      {
        v100 = *(this + 56);
        if (!os_log_type_enabled(v100, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_137;
        }

        LODWORD(buf[0]) = 134217984;
        *(buf + 4) = v99;
        v101 = "AoA measurement rejected due to high multipath probability (%4.2f)";
        v102 = v100;
        v103 = 12;
        goto LABEL_117;
      }
    }

    v104 = *(a2 + 56);
    v105 = *(a2 + 64);
    if ((v105 < 450.0 || v104 < 0.0) && (v105 < 200.0 || v104 < 40.0))
    {
      v147 = *(this + 56);
      if (!os_log_type_enabled(v147, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_137;
      }

      LODWORD(buf[0]) = 134218240;
      *(buf + 4) = v105;
      WORD2(buf[1]) = 2048;
      *(&buf[1] + 6) = v104;
      v101 = "AoA measurement rejected due to low track score (%4.1f) or low sweep angle (%4.1f deg)";
      v102 = v147;
      v103 = 22;
LABEL_117:
      _os_log_impl(&dword_2613DF000, v102, OS_LOG_TYPE_DEFAULT, v101, buf, v103);
      goto LABEL_137;
    }

    v106 = *(this + 56);
    if (os_log_type_enabled(v106, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf[0]) = 134218240;
      *(buf + 4) = v105;
      WORD2(buf[1]) = 2048;
      *(&buf[1] + 6) = v104;
      _os_log_impl(&dword_2613DF000, v106, OS_LOG_TYPE_DEFAULT, "AoA measurement accepted: track score (%4.1f) and sweep angle (%4.1f deg)", buf, 0x16u);
    }

    *(this + 464) = 1;
    *(this + 76) = *a2;
    buf[3] = 0x100000003;
    *&buf[1] = xmmword_261415AA0;
    buf[0] = &unk_2873C40E8;
    *&v206 = &v206 + 8;
    cnmatrix::Multiply<double>(v189, this + 520, buf);
    *(&v171[1] + 1) = 0x100000003;
    *(v171 + 8) = xmmword_261415AA0;
    *&v171[0] = &unk_2873C40E8;
    *&v172 = &v172 + 8;
    cnmatrix::Add<double>(&v195, buf, v171);
    if ((*(a2 + 88) & 1) == 0)
    {
      std::__throw_bad_optional_access[abi:ne200100]();
    }

    RoseSyntheticApertureFiltering::rangeAzEl2pos(*(a2 + 8), *(a2 + 40) / 180.0 * 3.14159265, *(a2 + 32) / 180.0 * 3.14159265, &v160);
    buf[3] = 0x100000003;
    *&buf[1] = xmmword_261415AA0;
    buf[0] = &unk_2873C40E8;
    *&v206 = &v206 + 8;
    cnmatrix::Multiply<double>(v189, &v160, buf);
    v157 = 0x100000003;
    v155 = &unk_2873C40E8;
    v156 = xmmword_261415AA0;
    v158 = v159;
    cnmatrix::Add<double>(buf, v171, &v155);
    v107 = *(this + 56);
    if (os_log_type_enabled(v107, OS_LOG_TYPE_DEFAULT))
    {
      v108 = *(this + 76);
      v109 = cnmatrix::CNMatrixBase<double>::operator()(&v155, 0);
      v110 = cnmatrix::CNMatrixBase<double>::operator()(&v155, 1u);
      v111 = cnmatrix::CNMatrixBase<double>::operator()(&v155, 2u);
      LODWORD(buf[0]) = 134218752;
      *(buf + 4) = v108;
      WORD2(buf[1]) = 2048;
      *(&buf[1] + 6) = v109;
      HIWORD(buf[2]) = 2048;
      *&buf[3] = v110;
      LOWORD(v206) = 2048;
      *(&v206 + 2) = v111;
      _os_log_impl(&dword_2613DF000, v107, OS_LOG_TYPE_DEFAULT, "Solution from AoA is generated at %f s - device pos is [%f, %f, %f] m", buf, 0x2Au);
    }

    v112 = 0;
    *(this + 12) = 5;
    *(this + 52) = 1;
    *(this + 14) = 2;
    *(this + 60) = 0;
    *(this + 11) = 0;
    v212 = 0u;
    v213 = 0u;
    v210 = 0u;
    v211 = 0u;
    v208 = 0u;
    v209 = 0u;
    v206 = 0u;
    v207 = 0u;
    memset(buf, 0, sizeof(buf));
    do
    {
      *&buf[v112] = cnmatrix::CNMatrixBase<double>::operator()(&v155, v112);
      ++v112;
    }

    while (v112 != 3);
    buf[3] = 0x3F847AE147AE147CLL;
    v206 = 0uLL;
    v207 = xmmword_261415D80;
    v208 = xmmword_261415D90;
    *&v209 = 0x3FF0000000000000;
    LODWORD(v214) = 0;
    v113 = *(this + 8);
    *(this + 9) = v113;
    v114 = *(this + 10);
    if (v113 >= v114)
    {
      v115 = 0xCF3CF3CF3CF3CF3DLL * ((v114 - v113) >> 3);
      v116 = 2 * v115;
      if (2 * v115 <= 1)
      {
        v116 = 1;
      }

      if (v115 >= 0xC30C30C30C30C3)
      {
        v117 = 0x186186186186186;
      }

      else
      {
        v117 = v116;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<RoseSyntheticApertureFiltering::BatchSolutionParticle>>(this + 64, v117);
    }

    *(v113 + 112) = v211;
    *(v113 + 128) = v212;
    *(v113 + 144) = v213;
    *(v113 + 160) = v214;
    *(v113 + 48) = v207;
    *(v113 + 64) = v208;
    *(v113 + 80) = v209;
    *(v113 + 96) = v210;
    *v113 = *buf;
    *(v113 + 16) = *&buf[2];
    *(v113 + 32) = v206;
    *(this + 9) = v113 + 168;
  }

LABEL_137:
  if (((*(this + 931) & 1) != 0 || *(this + 932) == 1) && (0x6DB6DB6DB6DB6DB7 * ((*(this + 85) - *(this + 84)) >> 4)) >= 4)
  {
    RoseSyntheticApertureFiltering::PRRoseSyntheticApertureBatchFilter::checkMotionStateAndObservability(this);
  }

  v118 = *(this + 85) - *(this + 84);
  v119 = 0x6DB6DB6DB6DB6DB7 * (v118 >> 4);
  if (v119 >= 4 && (*(this + 931) & 1) == 0 && (*(this + 932) & 1) == 0 && *(this + 74) - *(this + 75) >= 0.5)
  {
    v146 = RoseSyntheticApertureFiltering::PRRoseSyntheticApertureBatchFilter::batchSolver(this);
    *(this + 933) = v146;
    if (v146)
    {
      *(this + 75) = *(this + 74);
      RoseSyntheticApertureFiltering::PRRoseSyntheticApertureBatchFilter::checkVerticalAmbiguityResolution(this);
      *(this + 929) = 0;
      goto LABEL_150;
    }

LABEL_149:
    RoseSyntheticApertureFiltering::PRRoseSyntheticApertureBatchFilter::computeStraightPathSolution(this);
    goto LABEL_150;
  }

  if (v118 == 112)
  {
    v120 = *(this + 74);
    *(this + 73) = v120;
    *(this + 75) = v120 + -0.5;
    goto LABEL_150;
  }

  if (v119 >= 5 && (*(this + 933) & 1) == 0)
  {
    goto LABEL_149;
  }

LABEL_150:
  *v181 = 0;
  v181[4] = 0;
  *&v181[8] = 0;
  __p = 0u;
  v183 = 0u;
  v181[12] = 0;
  if (*(this + 934) == 1)
  {
    v121 = 6;
LABEL_152:
    *v181 = v121;
    goto LABEL_153;
  }

  if (*(this + 931) == 1)
  {
    if ((*(this + 932) & 1) == 0)
    {
      v121 = 1;
      goto LABEL_152;
    }
  }

  else
  {
    if (*(this + 932))
    {
      v123 = *(this + 56);
      if (os_log_type_enabled(v123, OS_LOG_TYPE_DEFAULT))
      {
        v124 = *(this + 78);
        LODWORD(buf[0]) = 134217984;
        *(buf + 4) = v124;
        _os_log_impl(&dword_2613DF000, v123, OS_LOG_TYPE_DEFAULT, "Linear user path length is %4.2f m", buf, 0xCu);
      }

      if (*(this + 78) >= 1.5)
      {
        v121 = 3;
      }

      else
      {
        v121 = 2;
      }

      goto LABEL_152;
    }

    if (*(this + 933) != 1)
    {
      v121 = 4;
      goto LABEL_152;
    }

    *v181 = 5;
    *&v181[8] = *(this + 234);
    v181[4] = *&v181[8] == 2;
    v125 = *(this + 18);
    for (j = *(this + 19); v125 != j; v125 += 432)
    {
      v126 = 0;
      v178 = 0u;
      v179 = 0u;
      v176 = 0u;
      v177 = 0u;
      v174 = 0u;
      v175 = 0u;
      v172 = 0u;
      v173 = 0u;
      memset(v171, 0, sizeof(v171));
      LODWORD(v180) = 1;
      do
      {
        *(v171 + v126) = *cnmatrix::CNMatrixBase<double>::operator()(v125, v126);
        ++v126;
      }

      while (v126 != 3);
      *(&v171[1] + 1) = *cnmatrix::CNMatrixBase<double>::operator()(v125 + 128, 0, 0);
      *&v172 = *cnmatrix::CNMatrixBase<double>::operator()(v125 + 128, 0, 1);
      *(&v172 + 1) = *cnmatrix::CNMatrixBase<double>::operator()(v125 + 128, 0, 2);
      *&v173 = *cnmatrix::CNMatrixBase<double>::operator()(v125 + 128, 1, 1);
      *(&v173 + 1) = *cnmatrix::CNMatrixBase<double>::operator()(v125 + 128, 1, 2);
      *&v174 = *cnmatrix::CNMatrixBase<double>::operator()(v125 + 128, 2, 2);
      v127 = *(v125 + 136);
      if (v127 != *(v125 + 140))
      {
        __assert_rtn("Trace", "cnmatrixbase.h", 4977, "A.NumRows() == A.NumCols()");
      }

      if (v127 < 1)
      {
        v129 = 0.0;
      }

      else
      {
        v128 = 0;
        v129 = 0.0;
        do
        {
          v129 = v129 + cnmatrix::CNMatrixBase<double>::operator()<int,int>(v125 + 128, v128, v128);
          ++v128;
        }

        while (v127 != v128);
      }

      v130 = *(v125 + 352);
      *(&v174 + 1) = sqrt(v129);
      *&v175 = v130;
      LODWORD(v180) = *(v125 + 360);
      v152 = 0x100000003;
      __src = &unk_2873C40E8;
      v151 = xmmword_261415AA0;
      v153 = v154;
      cnmatrix::Subtract<double>(v125 + 368, this + 168, &__src);
      v162 = 0x100000003;
      v161 = xmmword_261415AA0;
      v160 = &unk_2873C40E8;
      v163 = v164;
      buf[3] = 0x100000134;
      *&buf[1] = xmmword_261415AD0;
      buf[0] = &unk_2873C41B8;
      *&v206 = &v206 + 8;
      v157 = 0x100000003;
      v155 = &unk_2873C40E8;
      v156 = xmmword_261415AA0;
      v158 = v159;
      cnmatrix::Norm<double>(&__src, &v160, buf, &v155, "2");
      if (v131 != 0.0)
      {
        v169 = 0;
        v168 = 0;
        v170 = 0;
        memset(v167, 0, sizeof(v167));
        memset(v166, 0, sizeof(v166));
        std::vector<RoseSyntheticApertureFiltering::InternalExpectedRangeMeas>::reserve(&v168, 0x6DB6DB6DB6DB6DB7 * ((*(this + 85) - *(this + 84)) >> 4));
        cnmatrix::CNMatrixBase<double>::operator=(v125 + 368, this + 168);
        buf[3] = 0x100000003;
        *&buf[1] = xmmword_261415AA0;
        buf[0] = &unk_2873C40E8;
        *&v206 = &v206 + 8;
        cnmatrix::Subtract<double>(v125, this + 168, buf);
        RoseSyntheticApertureFiltering::pos2rangeThPhi(buf, v165);
        cnmatrix::CNMatrixBase<double>::operator=(v125 + 64, v165);
        RoseSyntheticApertureFiltering::PRRoseSyntheticApertureBatchFilter::measModelBatchAlt(v132, v165, this + 168, this + 84, v166, &v168, v167);
        v162 = 0x300000003;
        v161 = xmmword_261415D50;
        v160 = &unk_2873C4240;
        v163 = v164;
        cnmatrix::FastResize<double>(&v160, 3, 3);
        cnmatrix::CNMatrixBase<double>::WriteValue(&v160, 0.0);
        v133 = v168;
        for (k = v169; v133 != k; v133 += 136)
        {
          v157 = 0x300000003;
          v155 = &unk_2873C4240;
          v156 = xmmword_261415D50;
          v158 = v159;
          cnmatrix::Multiply<double>(v133 + 72, v133 + 8, &v155);
          buf[3] = 0x300000003;
          *&buf[1] = xmmword_261415D50;
          buf[0] = &unk_2873C4240;
          *&v206 = &v206 + 8;
          cnmatrix::Add<double>(&v160, &v155, buf);
          cnmatrix::CNMatrixBase<double>::operator=(&v160, buf);
        }

        cnmatrix::CNMatrix<3u,3u,double>::CNMatrix(&v155, &v160);
        v152 = 0x300000003;
        __src = &unk_2873C4240;
        v151 = xmmword_261415D50;
        v153 = v154;
        v202 = 0x100000003;
        v201 = xmmword_261415AA0;
        v200 = &unk_2873C4360;
        v203 = &v204;
        buf[3] = 0x10000000CLL;
        *&buf[1] = xmmword_261415DA0;
        buf[0] = &unk_2873C43E8;
        *&v206 = &v206 + 8;
        cnmatrix::Inv<double>(&v155, &v200, buf, &__src);
        cnmatrix::CNMatrixBase<double>::operator=(v125 + 240, &__src);
        buf[0] = v166;
        std::vector<RoseSyntheticApertureFiltering::InternalAoAMeas>::__destroy_vector::operator()[abi:ne200100](buf);
        buf[0] = v167;
        std::vector<RoseSyntheticApertureFiltering::InternalExpectedAoAMeas>::__destroy_vector::operator()[abi:ne200100](buf);
        buf[0] = &v168;
        std::vector<RoseSyntheticApertureFiltering::InternalExpectedRangeMeas>::__destroy_vector::operator()[abi:ne200100](buf);
      }

      *(&v175 + 1) = *cnmatrix::CNMatrixBase<double>::operator()(v125 + 64, 0);
      *&v176 = *cnmatrix::CNMatrixBase<double>::operator()(v125 + 64, 1u);
      *(&v176 + 1) = *cnmatrix::CNMatrixBase<double>::operator()(v125 + 64, 2u);
      *&v177 = sqrt(*cnmatrix::CNMatrixBase<double>::operator()(v125 + 240, 0, 0));
      *(&v177 + 1) = sqrt(*cnmatrix::CNMatrixBase<double>::operator()(v125 + 240, 1, 1));
      v135 = 0;
      *&v178 = sqrt(*cnmatrix::CNMatrixBase<double>::operator()(v125 + 240, 2, 2));
      do
      {
        *(&v178 + v135 + 1) = *cnmatrix::CNMatrixBase<double>::operator()(v125 + 368, v135);
        ++v135;
      }

      while (v135 != 3);
      v136 = *(&__p + 1);
      if (*(&__p + 1) >= v183)
      {
        v138 = __p;
        v139 = *(&__p + 1) - __p;
        v140 = 0xCF3CF3CF3CF3CF3DLL * ((*(&__p + 1) - __p) >> 3);
        v141 = v140 + 1;
        if (v140 + 1 > 0x186186186186186)
        {
          std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
        }

        if (0x9E79E79E79E79E7ALL * ((v183 - __p) >> 3) > v141)
        {
          v141 = 0x9E79E79E79E79E7ALL * ((v183 - __p) >> 3);
        }

        if (0xCF3CF3CF3CF3CF3DLL * ((v183 - __p) >> 3) >= 0xC30C30C30C30C3)
        {
          v141 = 0x186186186186186;
        }

        if (v141)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<RoseSyntheticApertureFiltering::BatchSolutionParticle>>(&__p, v141);
        }

        v142 = 8 * ((*(&__p + 1) - __p) >> 3);
        *(v142 + 112) = v177;
        *(v142 + 128) = v178;
        *(v142 + 144) = v179;
        *(v142 + 160) = v180;
        *(v142 + 48) = v173;
        *(v142 + 64) = v174;
        *(v142 + 80) = v175;
        *(v142 + 96) = v176;
        *v142 = v171[0];
        *(v142 + 16) = v171[1];
        *(v142 + 32) = v172;
        v137 = 168 * v140 + 168;
        v143 = v142 - v139;
        memcpy((v142 - v139), v138, v139);
        v144 = __p;
        *&__p = v143;
        *(&__p + 1) = v137;
        *&v183 = 0;
        if (v144)
        {
          operator delete(v144);
        }
      }

      else
      {
        *(*(&__p + 1) + 112) = v177;
        *(v136 + 128) = v178;
        *(v136 + 144) = v179;
        *(v136 + 160) = v180;
        *(v136 + 48) = v173;
        *(v136 + 64) = v174;
        *(v136 + 80) = v175;
        *(v136 + 96) = v176;
        *v136 = v171[0];
        *(v136 + 16) = v171[1];
        *(v136 + 32) = v172;
        v137 = v136 + 168;
      }

      *(&__p + 1) = v137;
      v145 = *(this + 82);
      if (v145 == *(this + 79))
      {
        v145 = *(this + 80);
      }

      *(&v183 + 1) = *(v145 - 8);
    }
  }

LABEL_153:
  *this = *v181;
  *(this + 5) = *&v181[5];
  if (v181 != this)
  {
    std::vector<RoseSyntheticApertureFiltering::BatchSolutionParticle>::__assign_with_size[abi:ne200100]<RoseSyntheticApertureFiltering::BatchSolutionParticle*,RoseSyntheticApertureFiltering::BatchSolutionParticle*>(this + 2, __p, *(&__p + 1), 0xCF3CF3CF3CF3CF3DLL * ((*(&__p + 1) - __p) >> 3));
  }

  *(this + 5) = *(&v183 + 1);
  RoseSyntheticApertureFiltering::PRRoseSyntheticApertureBatchFilter::getBatchOrAoASolution(this, a3);
  if (__p)
  {
    *(&__p + 1) = __p;
    operator delete(__p);
  }

  v122 = *MEMORY[0x277D85DE8];
}

void RoseSyntheticApertureFiltering::PRRoseSyntheticApertureBatchFilter::resetFilter(RoseSyntheticApertureFiltering::PRRoseSyntheticApertureBatchFilter *this)
{
  *(this + 75) = *(this + 73);
  *(this + 78) = 0;
  *(this + 930) = 65792;
  *(this + 470) = 0;
  *(this + 234) = 0;
  v1 = *(this + 56);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&dword_2613DF000, v1, OS_LOG_TYPE_DEFAULT, "Batch filter is reset", v2, 2u);
  }
}

void RoseSyntheticApertureFiltering::PRRoseSyntheticApertureBatchFilter::checkMotionStateAndObservability(RoseSyntheticApertureFiltering::PRRoseSyntheticApertureBatchFilter *this)
{
  v1 = this;
  v70[226] = *MEMORY[0x277D85DE8];
  v2 = *(this + 85);
  v3 = *(this + 84);
  v4 = 0x6DB6DB6DB6DB6DB7 * ((v2 - v3) >> 4);
  v60 = 0;
  v61 = 0;
  v62 = 0;
  std::vector<cnmatrix::CNMatrix<2u,1u,double>>::reserve(&v60, v4);
  v57 = 0x100000002;
  v56 = xmmword_261415DB0;
  v55 = &unk_2873C4478;
  v58 = &v59;
  v5 = *(v1 + 84);
  v6 = *(v1 + 85);
  while (v5 != v6)
  {
    v7 = cnmatrix::CNMatrixBase<double>::operator()(v5 + 40, 2u);
    *cnmatrix::CNMatrixBase<double>::operator()(&v55, 0) = v7;
    v8 = cnmatrix::CNMatrixBase<double>::operator()(v5 + 40, 0);
    *cnmatrix::CNMatrixBase<double>::operator()(&v55, 1u) = v8;
    v9 = v61;
    if (v61 >= v62)
    {
      v10 = std::vector<cnmatrix::CNMatrix<2u,1u,double>>::__emplace_back_slow_path<cnmatrix::CNMatrix<2u,1u,double> const&>(&v60, &v55);
    }

    else
    {
      cnmatrix::CNMatrix<2u,1u,double>::CNMatrix(v61, &v55);
      v10 = v9 + 56;
    }

    v61 = v10;
    v5 += 112;
  }

  v52 = 0x100000002;
  v51 = xmmword_261415DB0;
  v50 = &unk_2873C4478;
  v53 = &v54;
  cnmatrix::FastResize<double>(&v50, 2, 1);
  cnmatrix::CNMatrixBase<double>::WriteValue(&v50, 0.0);
  v12 = v60;
  for (i = v61; v12 != i; v12 += 56)
  {
    v68 = 0x100000002;
    buf[0] = &unk_2873C4478;
    *&buf[1] = xmmword_261415DB0;
    v69 = v70;
    cnmatrix::Add<double>(&v50, v12, buf);
    cnmatrix::CNMatrixBase<double>::operator=(&v50, buf);
  }

  v68 = 0x100000002;
  *&buf[1] = xmmword_261415DB0;
  buf[0] = &unk_2873C4478;
  v69 = v70;
  cnmatrix::Multiply<double>(&v50, buf, 1.0 / v4);
  cnmatrix::CNMatrixBase<double>::operator=(&v50, buf);
  if (v2 == v3)
  {
    LOBYTE(v18) = *(v1 + 931);
    goto LABEL_25;
  }

  v13 = v1;
  v14 = 0;
  if (v4 <= 1)
  {
    v15 = 1;
  }

  else
  {
    v15 = v4;
  }

  v16 = 0.0;
  do
  {
    v68 = 0x100000002;
    buf[0] = &unk_2873C4478;
    *&buf[1] = xmmword_261415DB0;
    v69 = v70;
    cnmatrix::Subtract<double>(v60 + v14, &v50, buf);
    cnmatrix::CNMatrixBase<double>::operator=(v60 + v14, buf);
    if (*(v13 + 931) == 1)
    {
      v47 = 0x100000002;
      v46 = xmmword_261415DB0;
      v45 = &unk_2873C4478;
      v48 = v49;
      v68 = 0x1000000E1;
      *&buf[1] = xmmword_261415DC0;
      buf[0] = &unk_2873C44C0;
      v69 = v70;
      v42 = 0x100000002;
      v40 = &unk_2873C4478;
      v41 = xmmword_261415DB0;
      v43 = v44;
      cnmatrix::Norm<double>(v60 + v14, &v45, buf, &v40, "2");
      if (v17 > v16)
      {
        v16 = v17;
      }
    }

    v14 += 56;
    --v15;
  }

  while (v15);
  v1 = v13;
  v18 = *(v13 + 931);
  if (v18 != 1 || v16 < 0.3)
  {
LABEL_25:
    if (*(v1 + 932) != 1 || (v18 & 1) != 0)
    {
      goto LABEL_56;
    }

    goto LABEL_27;
  }

  v19 = *(v13 + 56);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf[0]) = 134217984;
    *(buf + 4) = *&v16;
    _os_log_impl(&dword_2613DF000, v19, OS_LOG_TYPE_DEFAULT, "Enough user motion is detected: %f m - fStatic set to false", buf, 0xCu);
  }

  *(v13 + 931) = 0;
  if (*(v13 + 932) == 1)
  {
LABEL_27:
    v68 = 0x200000002;
    *&buf[1] = xmmword_261415DD0;
    buf[0] = &unk_2873C4508;
    v69 = v70;
    cnmatrix::FastResize<double>(buf, 2, 2);
    cnmatrix::CNMatrixBase<double>::WriteValue(buf, 0.0);
    v21 = v60;
    for (j = v61; v21 != j; v21 += 56)
    {
      cnmatrix::CNMatrix<1u,2u,double>::CNMatrix(v39, *(v21 + 12), *(v21 + 8));
      cnmatrix::Transpose<double>(v21, v39);
      v42 = 0x200000002;
      v40 = &unk_2873C4508;
      v41 = xmmword_261415DD0;
      v43 = v44;
      cnmatrix::Multiply<double>(v21, v39, &v40);
      v47 = 0x200000002;
      v46 = xmmword_261415DD0;
      v45 = &unk_2873C4508;
      v48 = v49;
      cnmatrix::Add<double>(buf, &v40, &v45);
      cnmatrix::CNMatrixBase<double>::operator=(buf, &v45);
    }

    v47 = 0x200000002;
    v46 = xmmword_261415DD0;
    v45 = &unk_2873C4508;
    v48 = v49;
    v42 = 0x200000002;
    v40 = &unk_2873C4508;
    v41 = xmmword_261415DD0;
    v43 = v44;
    cnmatrix::Eig<2u,2u,2u,2u,2u,2u,double>(buf, &v45, &v40);
    v22 = *cnmatrix::CNMatrixBase<double>::operator()(&v40, 0, 0);
    v23 = cnmatrix::CNMatrixBase<double>::operator()(&v40, 1, 1);
    if (*v23 >= v22)
    {
      v24 = v22;
    }

    else
    {
      v24 = *v23;
    }

    cnmatrix::CNMatrix<2u,2u,double>::CNMatrix(v39, DWORD1(v46), v46);
    cnmatrix::Transpose<double>(&v45, v39);
    v26 = v60;
    v25 = v61;
    if (v60 == v61)
    {
      v34 = 0.0;
      v35 = 0.0;
    }

    else
    {
      v27 = 0.0;
      v28 = 0.0;
      v29 = 0.0;
      v30 = 0.0;
      do
      {
        v64 = 0x100000002;
        *v63 = &unk_2873C4478;
        *&v63[8] = xmmword_261415DB0;
        v65 = &v66;
        cnmatrix::Multiply<double>(v39, v26, v63);
        v31 = cnmatrix::CNMatrixBase<double>::operator()(v63, 0);
        v32 = cnmatrix::CNMatrixBase<double>::operator()(v63, 1u);
        if (v31 < v27)
        {
          v33 = v31;
        }

        else
        {
          v33 = v27;
        }

        if (v31 <= v28)
        {
          v27 = v33;
        }

        else
        {
          v28 = v31;
        }

        if (v32 <= v30)
        {
          if (v32 < v29)
          {
            v29 = v32;
          }
        }

        else
        {
          v30 = v32;
        }

        v26 += 56;
      }

      while (v26 != v25);
      v34 = v28 - v27;
      v35 = v30 - v29;
    }

    if (v35 >= v34)
    {
      v36 = v34;
    }

    else
    {
      v36 = v35;
    }

    if (v34 < v35)
    {
      v34 = v35;
    }

    *(v1 + 78) = v34;
    if (v36 >= 0.3)
    {
      v37 = *(v1 + 56);
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        *v63 = 134218240;
        *&v63[4] = v24;
        *&v63[12] = 2048;
        *&v63[14] = v36;
        _os_log_impl(&dword_2613DF000, v37, OS_LOG_TYPE_DEFAULT, "Batch filter problem is observable now: smallest eigenvalue is %f, smallest rectangular box dimension is %f m", v63, 0x16u);
      }

      *(v1 + 932) = 0;
    }
  }

LABEL_56:
  buf[0] = &v60;
  std::vector<cnmatrix::CNMatrix<2u,1u,double>>::__destroy_vector::operator()[abi:ne200100](buf);
  v38 = *MEMORY[0x277D85DE8];
}

void sub_2613F1DE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void **a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, char a54)
{
  a13 = &a54;
  std::vector<cnmatrix::CNMatrix<2u,1u,double>>::__destroy_vector::operator()[abi:ne200100](&a13);
  _Unwind_Resume(a1);
}

BOOL RoseSyntheticApertureFiltering::PRRoseSyntheticApertureBatchFilter::batchSolver(RoseSyntheticApertureFiltering::PRRoseSyntheticApertureBatchFilter *this)
{
  v137[308] = *MEMORY[0x277D85DE8];
  v1 = *(this + 85);
  v2 = *(this + 84);
  if ((0x6DB6DB6DB6DB6DB7 * ((v1 - v2) >> 4)) >= 4)
  {
    v127 = 0;
    v126 = 0;
    v128 = 0;
    v4 = *(this + 18);
    v97 = (this + 144);
    v5 = *(this + 19);
    if ((*(this + 933) & 1) != 0 || v4 != v5)
    {
      if (v4 != v5)
      {
        do
        {
          std::vector<cnmatrix::CNMatrix<3u,1u,double>>::push_back[abi:ne200100](&v126, v4);
          v4 += 432;
        }

        while (v4 != v5);
        v4 = *v97;
      }

      cnmatrix::CNMatrix<3u,1u,double>::CNMatrix(buf, v4);
      cnmatrix::CNMatrix<3u,1u,double>::CNMatrix(&v107, buf);
      cnmatrix::CNMatrix<3u,1u,double>::CNMatrix(&v102, buf);
      v8 = *cnmatrix::CNMatrixBase<double>::operator()(&v107, 1u);
      *cnmatrix::CNMatrixBase<double>::operator()(&v107, 1u) = v8 + 3.0;
      v9 = *cnmatrix::CNMatrixBase<double>::operator()(&v102, 1u);
      *cnmatrix::CNMatrixBase<double>::operator()(&v102, 1u) = v9 + -3.0;
      std::vector<cnmatrix::CNMatrix<3u,1u,double>>::push_back[abi:ne200100](&v126, &v107);
      std::vector<cnmatrix::CNMatrix<3u,1u,double>>::push_back[abi:ne200100](&v126, &v102);
    }

    else
    {
      if (v2 != v1)
      {
        for (i = v2 + 112; i != v1; i += 112)
        {
          if (*(i + 8) < *(v2 + 8))
          {
            v2 = i;
          }
        }
      }

      if (*(v2 + 8) >= 0.5)
      {
        v10 = *(v2 + 8);
      }

      else
      {
        v10 = 0.5;
      }

      cnmatrix::CNMatrix<3u,1u,double>::CNMatrix(buf, v2 + 40);
      for (j = 0; j != 3; ++j)
      {
        cnmatrix::CNMatrix<3u,1u,double>::CNMatrix(&v107, buf);
        cnmatrix::CNMatrix<3u,1u,double>::CNMatrix(&v102, buf);
        v12 = *cnmatrix::CNMatrixBase<double>::operator()(&v107, j);
        *cnmatrix::CNMatrixBase<double>::operator()(&v107, j) = v10 + v12;
        v13 = *cnmatrix::CNMatrixBase<double>::operator()(&v102, j);
        *cnmatrix::CNMatrixBase<double>::operator()(&v102, j) = v13 - v10;
        std::vector<cnmatrix::CNMatrix<3u,1u,double>>::push_back[abi:ne200100](&v126, &v107);
        std::vector<cnmatrix::CNMatrix<3u,1u,double>>::push_back[abi:ne200100](&v126, &v102);
      }
    }

    v123 = 0;
    v124 = 0;
    v125 = 0;
    v14 = v126;
    v15 = v127;
    if (v126 == v127)
    {
      v18 = 0;
    }

    else
    {
      do
      {
        v107 = 0;
        v108 = 0uLL;
        RoseSyntheticApertureFiltering::PRRoseSyntheticApertureBatchFilter::initializeFilterWithGuess(this, v14, this + 672, &v107, buf);
        std::vector<RoseSyntheticApertureFiltering::FilterInitializationResult>::push_back[abi:ne200100](&v123, buf);
        v137[26] = &unk_2873C4140;
        v137[12] = &unk_2873C4140;
        v137[4] = &unk_2873C4140;
        *&buf[8] = &unk_2873C4140;
        v102 = &v107;
        std::vector<RoseSyntheticApertureFiltering::InternalAoAMeas>::__destroy_vector::operator()[abi:ne200100](&v102);
        v14 += 64;
      }

      while (v14 != v15);
      v17 = v123;
      v16 = v124;
      while (1)
      {
        if (v17 == v124)
        {
          v18 = v124;
          goto LABEL_36;
        }

        if (*v17 != 1)
        {
          break;
        }

        v17 += 376;
      }

      if (v17 == v124 || v17 + 376 == v124)
      {
        v18 = v17;
      }

      else
      {
        v18 = v17;
        do
        {
          if (*(v17 + 376) == 1)
          {
            *v18 = 1;
            cnmatrix::CNMatrixBase<double>::operator=(v18 + 8, v17 + 384);
            cnmatrix::CNMatrixBase<double>::operator=(v18 + 72, v17 + 448);
            cnmatrix::CNMatrixBase<double>::operator=(v18 + 136, v17 + 512);
            cnmatrix::CNMatrixBase<double>::operator=(v18 + 248, v17 + 624);
            v19 = *(v17 + 736);
            *(v18 + 368) = *(v17 + 744);
            *(v18 + 360) = v19;
            v18 += 376;
          }

          v20 = v17 + 752;
          v17 += 376;
        }

        while (v20 != v16);
      }
    }

LABEL_36:
    std::vector<RoseSyntheticApertureFiltering::FilterInitializationResult>::erase(&v123, v18, v124);
    v22 = 126 - 2 * __clz(0x51B3BEA3677D46CFLL * ((v124 - v123) >> 3));
    if (v124 == v123)
    {
      v23 = 0;
    }

    else
    {
      v23 = v22;
    }

    std::__introsort<std::_ClassicAlgPolicy,RoseSyntheticApertureFiltering::PRRoseSyntheticApertureBatchFilter::batchSolver(void)::$_2 &,RoseSyntheticApertureFiltering::FilterInitializationResult *,false>(v123, v124, v23, 1, v21);
    if (v123 != v124)
    {
      *buf = sqrt(*(v123 + 360) / ((0x6DB6DB6DB6DB6DB7 * ((*(this + 85) - *(this + 84)) >> 4)) + -3.0));
      boost::circular_buffer<double,std::allocator<double>>::push_back_impl<double &&>(this + 79, buf);
      v24 = *(this + 82);
      v25 = *(this + 79);
      v26 = v24;
      if (v24 == v25)
      {
        v26 = *(this + 80);
      }

      v27 = *(this + 123);
      if (*(v26 - 8) > v27)
      {
        v50 = *(this + 56);
        if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
        {
          if (v24 == v25)
          {
            v24 = *(this + 80);
          }

          v51 = *(v24 - 8);
          *buf = 134218240;
          *&buf[4] = v51;
          *&buf[12] = 2048;
          *&buf[14] = v27;
          _os_log_impl(&dword_2613DF000, v50, OS_LOG_TYPE_DEFAULT, "Batch filter has detected an issue with the measurements - rms normalized error (%f) is above the threshold (%f)", buf, 0x16u);
        }

        RoseSyntheticApertureFiltering::PRRoseSyntheticApertureBatchFilter::reinitFilter(this);
        v7 = 0;
        *(this + 934) = 1;
        goto LABEL_138;
      }

      v120 = 0;
      v121 = 0;
      v122 = 0;
      std::vector<RoseSyntheticApertureFiltering::FilterInitializationResult>::push_back[abi:ne200100](&v120, v123);
      v28 = v123;
      if ((0x51B3BEA3677D46CFLL * ((v124 - v123) >> 3)) >= 2)
      {
        v29 = 1;
        do
        {
          v30 = v120;
          v31 = v121;
          if (v121 == v120)
          {
            goto LABEL_53;
          }

          v32 = 0;
          v33 = 1;
          do
          {
            v34 = 0x51B3BEA3677D46CFLL * ((v31 - v30) >> 3);
            v35 = v30 + 376 * v32 + 8;
            while (!v33)
            {
              v33 = 0;
              ++v32;
              v35 += 376;
              if (v34 <= v32)
              {
                goto LABEL_55;
              }
            }

            v117 = 0x100000003;
            v116 = xmmword_261415AA0;
            v115 = &unk_2873C40E8;
            v118 = v119;
            cnmatrix::Subtract<double>(v123 + 376 * v29 + 8, v35, &v115);
            v109 = 0x100000003;
            v108 = xmmword_261415AA0;
            v107 = &unk_2873C40E8;
            v110 = v111;
            v135 = 0x100000134;
            *&buf[8] = xmmword_261415AD0;
            *buf = &unk_2873C41B8;
            v136 = v137;
            v104 = 0x100000003;
            v102 = &unk_2873C40E8;
            v103 = xmmword_261415AA0;
            v105 = v106;
            cnmatrix::Norm<double>(&v115, &v107, buf, &v102, "2");
            v33 = v36 > 0.1;
            v30 = v120;
            v31 = v121;
            ++v32;
          }

          while (0x51B3BEA3677D46CFLL * ((v121 - v120) >> 3) > v32);
          v28 = v123;
          if (v36 > 0.1)
          {
LABEL_53:
            if (exp(*(v30 + 360) - *(v28 + 376 * v29 + 360)) > 0.01)
            {
              std::vector<RoseSyntheticApertureFiltering::FilterInitializationResult>::push_back[abi:ne200100](&v120, v28 + 376 * v29);
LABEL_55:
              v28 = v123;
            }
          }

          ++v29;
        }

        while (0x51B3BEA3677D46CFLL * ((v124 - v28) >> 3) > v29);
      }

      v38 = v120;
      v37 = v121;
      if ((0x51B3BEA3677D46CFLL * ((v121 - v120) >> 3)) <= 1)
      {
        goto LABEL_74;
      }

      v39 = exp(-*(v120 + 360));
      v40 = 0.0;
      if (v38 != v37)
      {
        v41 = v38;
        do
        {
          v40 = v40 + exp(-*(v41 + 360));
          v41 += 376;
        }

        while (v41 != v37);
      }

      v42 = v39 / v40;
      if (v42 >= 0.9 || (v43 = cnmatrix::CNMatrixBase<double>::operator()(v38 + 72, 1u), v38 = v120, v37 = v121, (0x51B3BEA3677D46CFLL * ((v121 - v120) >> 3)) < 2))
      {
LABEL_74:
        v112 = 0;
        v113 = 0;
        v114 = 0;
        if (v38 == v37)
        {
          v57 = 0;
          v56 = 0;
        }

        else
        {
          do
          {
            RoseSyntheticApertureFiltering::PRRoseSyntheticApertureBatchFilter::checkFoVBatch(v38 + 8, this + 696, &v107);
            if (v107 == v108)
            {
              std::vector<RoseSyntheticApertureFiltering::FilterInitializationResult>::push_back[abi:ne200100](&v112, v38);
            }

            else
            {
              RoseSyntheticApertureFiltering::PRRoseSyntheticApertureBatchFilter::initializeFilterWithGuess(this, v38 + 8, this + 672, &v107, buf);
              v52 = v107;
              v53 = v108;
              if (v107 == v108)
              {
                goto LABEL_85;
              }

              v54 = 1;
              do
              {
                while (!v54)
                {
                  v54 = 0;
                  v52 += 26;
                  if (v52 == v53)
                  {
                    v55 = v38;
                    goto LABEL_88;
                  }
                }

                v54 = RoseSyntheticApertureFiltering::PRRoseSyntheticApertureBatchFilter::checkFoV(&buf[8], v52);
                v52 += 26;
              }

              while (v52 != v53);
              v55 = v38;
              if (v54)
              {
LABEL_85:
                if (buf[0])
                {
                  v55 = buf;
                }

                else
                {
                  v55 = v38;
                }
              }

LABEL_88:
              std::vector<RoseSyntheticApertureFiltering::FilterInitializationResult>::push_back[abi:ne200100](&v112, v55);
            }

            *buf = &v107;
            std::vector<RoseSyntheticApertureFiltering::InternalAoAMeas>::__destroy_vector::operator()[abi:ne200100](buf);
            v38 += 376;
          }

          while (v38 != v37);
          v56 = v112;
          v57 = v113;
        }
      }

      else
      {
        v44 = *v43;
        v45 = 1;
        v46 = 448;
        while (1)
        {
          v47 = cnmatrix::CNMatrixBase<double>::operator()(v38 + v46, 1u);
          v48 = fmod(*v47 - v44 + 3.14159265, 6.28318531);
          if (v48 < 0.0)
          {
            v48 = v48 + 6.28318531;
          }

          v49 = fabs(v48 + -3.14159265);
          if (v49 > 0.392699082)
          {
            break;
          }

          ++v45;
          v38 = v120;
          v37 = v121;
          v46 += 376;
          if (0x51B3BEA3677D46CFLL * ((v121 - v120) >> 3) <= v45)
          {
            goto LABEL_74;
          }
        }

        v92 = *(this + 56);
        if (os_log_type_enabled(v92, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218240;
          *&buf[4] = v42;
          *&buf[12] = 2048;
          *&buf[14] = v49;
          _os_log_impl(&dword_2613DF000, v92, OS_LOG_TYPE_DEFAULT, "Batch filter clearing solutions since the best one has a low weight (%f) and the horizontal angle difference to a secondary solution is too high (%f)", buf, 0x16u);
        }

        v93 = v120;
        if (v121 != v120)
        {
          v94 = v121 - 46;
          v95 = v121 - 46;
          do
          {
            v95[30] = &unk_2873C4140;
            v95[16] = &unk_2873C4140;
            v95[8] = &unk_2873C4140;
            *v95 = &unk_2873C4140;
            v96 = v95 - 1;
            v95 -= 47;
            v94 -= 47;
          }

          while (v96 != v93);
        }

        v57 = 0;
        v56 = 0;
        v121 = v93;
        v112 = 0;
        v113 = 0;
        v114 = 0;
      }

      v58 = 126 - 2 * __clz(0x51B3BEA3677D46CFLL * ((v57 - v56) >> 3));
      if (v57 == v56)
      {
        v59 = 0;
      }

      else
      {
        v59 = v58;
      }

      std::__introsort<std::_ClassicAlgPolicy,RoseSyntheticApertureFiltering::PRRoseSyntheticApertureBatchFilter::batchSolver(void)::$_3 &,RoseSyntheticApertureFiltering::FilterInitializationResult *,false>(v56, v57, v59, 1);
      v60 = v112;
      if (v112 != v113)
      {
        v61 = xmmword_261415D50;
        v62 = xmmword_261415AA0;
        v63 = xmmword_261415DA0;
        do
        {
          v109 = 0x300000003;
          v107 = &unk_2873C4240;
          v108 = v61;
          v110 = v111;
          v104 = 0x100000003;
          v102 = &unk_2873C4360;
          v103 = v62;
          v105 = v106;
          v135 = 0x10000000CLL;
          *buf = &unk_2873C43E8;
          *&buf[8] = v63;
          v136 = v137;
          cnmatrix::Inv<double>(v60 + 248, &v102, buf, &v107);
          v64 = *cnmatrix::CNMatrixBase<double>::operator()(&v107, 1, 1);
          v104 = 0x300000003;
          v102 = &unk_2873C4240;
          v103 = xmmword_261415D50;
          v105 = v106;
          v117 = 0x100000003;
          v116 = xmmword_261415AA0;
          v115 = &unk_2873C4360;
          v118 = v119;
          v135 = 0x10000000CLL;
          *&buf[8] = xmmword_261415DA0;
          *buf = &unk_2873C43E8;
          v136 = v137;
          cnmatrix::Inv<double>(v60 + 136, &v115, buf, &v102);
          v65 = v103;
          if (v103 != DWORD1(v103))
          {
            __assert_rtn("Trace", "cnmatrixbase.h", 4977, "A.NumRows() == A.NumCols()");
          }

          if (v103 < 1)
          {
            v67 = 0.0;
          }

          else
          {
            v66 = 0;
            v67 = 0.0;
            do
            {
              v67 = v67 + cnmatrix::CNMatrixBase<double>::operator()<int,int>(&v102, v66, v66);
              ++v66;
            }

            while (v65 != v66);
          }

          if (sqrt(v64) * 180.0 / 3.14159265 <= *(this + 122) || v67 <= *(this + 121))
          {
            v60 += 376;
            v68 = v113;
            v61 = xmmword_261415D50;
            v62 = xmmword_261415AA0;
            v63 = xmmword_261415DA0;
          }

          else
          {
            std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<RoseSyntheticApertureFiltering::FilterInitializationResult *,RoseSyntheticApertureFiltering::FilterInitializationResult *,RoseSyntheticApertureFiltering::FilterInitializationResult *>(buf, v60 + 376, v113, v60);
            v61 = xmmword_261415D50;
            v62 = xmmword_261415AA0;
            v63 = xmmword_261415DA0;
            if (v113 != v68)
            {
              v69 = v113 - 368;
              v70 = (v113 - 368);
              do
              {
                v70[30] = &unk_2873C4140;
                v70[16] = &unk_2873C4140;
                v70[8] = &unk_2873C4140;
                *v70 = &unk_2873C4140;
                v71 = v70 - 1;
                v70 -= 47;
                v69 -= 376;
              }

              while (v71 != v68);
            }

            v113 = v68;
          }
        }

        while (v60 != v68);
        if (v112 != v68)
        {
          v99 = 0;
          v100 = 0;
          v101 = 0;
          std::vector<RoseSyntheticApertureFiltering::FilterInitializationResult>::push_back[abi:ne200100](&v99, v112);
          v72 = v112;
          v73 = *(v112 + 360);
          v74 = xmmword_261415AA0;
          if ((0x51B3BEA3677D46CFLL * ((v113 - v112) >> 3)) >= 2)
          {
            v75 = 1;
            do
            {
              v76 = v99;
              v77 = v100;
              if (v100 == v99)
              {
                goto LABEL_122;
              }

              v78 = 0;
              v79 = 1;
              do
              {
                v80 = 0x51B3BEA3677D46CFLL * ((v77 - v76) >> 3);
                v81 = v76 + 376 * v78 + 8;
                while (!v79)
                {
                  v79 = 0;
                  ++v78;
                  v81 += 376;
                  if (v80 <= v78)
                  {
                    v72 = v112;
                    goto LABEL_123;
                  }
                }

                v117 = 0x100000003;
                v116 = v74;
                v115 = &unk_2873C40E8;
                v118 = v119;
                cnmatrix::Subtract<double>(v112 + 376 * v75 + 8, v81, &v115);
                v109 = 0x100000003;
                v108 = xmmword_261415AA0;
                v107 = &unk_2873C40E8;
                v110 = v111;
                v135 = 0x100000134;
                *&buf[8] = xmmword_261415AD0;
                *buf = &unk_2873C41B8;
                v136 = v137;
                v104 = 0x100000003;
                v102 = &unk_2873C40E8;
                v103 = xmmword_261415AA0;
                v105 = v106;
                cnmatrix::Norm<double>(&v115, &v107, buf, &v102, "2");
                v79 = v82 > 0.1;
                v76 = v99;
                v77 = v100;
                ++v78;
                v74 = xmmword_261415AA0;
              }

              while (0x51B3BEA3677D46CFLL * ((v100 - v99) >> 3) > v78);
              v72 = v112;
              if (v82 > 0.1)
              {
LABEL_122:
                std::vector<RoseSyntheticApertureFiltering::FilterInitializationResult>::push_back[abi:ne200100](&v99, v72 + 376 * v75);
                v72 = v112;
                v74 = xmmword_261415AA0;
              }

LABEL_123:
              ++v75;
            }

            while (0x51B3BEA3677D46CFLL * ((v113 - v72) >> 3) > v75);
          }

          std::vector<RoseSyntheticApertureFiltering::InternalFilterState>::__base_destruct_at_end[abi:ne200100](v97, *v97);
          v83 = v99;
          v84 = v100;
          if (v99 == v100)
          {
            v88 = *(this + 19);
            v85 = 0.0;
          }

          else
          {
            v85 = 0.0;
            do
            {
              cnmatrix::CNMatrix<3u,1u,double>::CNMatrix(&v115, v83 + 8);
              cnmatrix::CNMatrix<3u,1u,double>::CNMatrix(v98, v83 + 72);
              v109 = 0x300000003;
              v108 = xmmword_261415D50;
              v107 = &unk_2873C4240;
              v110 = v111;
              v104 = 0x100000003;
              v102 = &unk_2873C4360;
              v103 = xmmword_261415AA0;
              v105 = v106;
              v135 = 0x10000000CLL;
              *&buf[8] = xmmword_261415DA0;
              *buf = &unk_2873C43E8;
              v136 = v137;
              cnmatrix::Inv<double>(v83 + 136, &v102, buf, &v107);
              v104 = 0x300000003;
              v102 = &unk_2873C4240;
              v103 = xmmword_261415D50;
              v105 = v106;
              v131 = 0x100000003;
              v130 = xmmword_261415AA0;
              v129 = &unk_2873C4360;
              v132 = &v133;
              v135 = 0x10000000CLL;
              *&buf[8] = xmmword_261415DA0;
              *buf = &unk_2873C43E8;
              v136 = v137;
              cnmatrix::Inv<double>(v83 + 248, &v129, buf, &v102);
              v86 = exp(v73 - *(v83 + 360));
              *buf = v86;
              LODWORD(v129) = *(v83 + 368);
              v87 = *(this + 19);
              if (v87 >= *(this + 20))
              {
                v88 = std::vector<RoseSyntheticApertureFiltering::InternalFilterState>::__emplace_back_slow_path<cnmatrix::CNMatrix<3u,1u,double> const&,cnmatrix::CNMatrix<3u,1u,double> const&,cnmatrix::CNMatrix<3u,3u,double> const&,cnmatrix::CNMatrix<3u,3u,double> const&,double &,RoseSyntheticApertureFiltering::BatchSolutionType const&,cnmatrix::CNMatrix<3u,1u,double>&>(v97, &v115, v98, &v107, &v102, buf, &v129, this + 168);
              }

              else
              {
                std::vector<RoseSyntheticApertureFiltering::InternalFilterState>::__construct_one_at_end[abi:ne200100]<cnmatrix::CNMatrix<3u,1u,double> const&,cnmatrix::CNMatrix<3u,1u,double> const&,cnmatrix::CNMatrix<3u,3u,double> const&,cnmatrix::CNMatrix<3u,3u,double> const&,double &,RoseSyntheticApertureFiltering::BatchSolutionType const&,cnmatrix::CNMatrix<3u,1u,double>&>(v97, &v115, v98, &v107, &v102, buf, &v129, this + 168);
                v88 = v87 + 432;
              }

              *(this + 19) = v88;
              v85 = v85 + v86;
              v83 += 376;
            }

            while (v83 != v84);
          }

          for (k = *v97; k != v88; k += 432)
          {
            *(k + 352) = *(k + 352) / v85;
          }

          *buf = &v99;
          std::vector<RoseSyntheticApertureFiltering::FilterInitializationResult>::__destroy_vector::operator()[abi:ne200100](buf);
        }
      }

      *buf = &v112;
      std::vector<RoseSyntheticApertureFiltering::FilterInitializationResult>::__destroy_vector::operator()[abi:ne200100](buf);
      *buf = &v120;
      std::vector<RoseSyntheticApertureFiltering::FilterInitializationResult>::__destroy_vector::operator()[abi:ne200100](buf);
    }

    v7 = *(this + 19) != *(this + 18);
LABEL_138:
    *buf = &v123;
    std::vector<RoseSyntheticApertureFiltering::FilterInitializationResult>::__destroy_vector::operator()[abi:ne200100](buf);
    *buf = &v126;
    std::vector<cnmatrix::CNMatrix<3u,1u,double>>::__destroy_vector::operator()[abi:ne200100](buf);
    goto LABEL_139;
  }

  v7 = 0;
LABEL_139:
  v90 = *MEMORY[0x277D85DE8];
  return v7;
}

void sub_2613F31A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, void **a61, uint64_t a62, uint64_t a63)
{
  a61 = &a69;
  std::vector<RoseSyntheticApertureFiltering::FilterInitializationResult>::__destroy_vector::operator()[abi:ne200100](&a61);
  a61 = &a72;
  std::vector<RoseSyntheticApertureFiltering::FilterInitializationResult>::__destroy_vector::operator()[abi:ne200100](&a61);
  a61 = &STACK[0x210];
  std::vector<cnmatrix::CNMatrix<3u,1u,double>>::__destroy_vector::operator()[abi:ne200100](&a61);
  _Unwind_Resume(a1);
}

void *std::vector<RoseSyntheticApertureFiltering::InternalExpectedRangeMeas>::reserve(void *result, unint64_t a2)
{
  if (0xF0F0F0F0F0F0F0F1 * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 < 0x1E1E1E1E1E1E1E2)
    {
      v2 = result[1] - *result;
      v3 = result;
      std::__allocate_at_least[abi:ne200100]<std::allocator<RoseSyntheticApertureFiltering::InternalExpectedRangeMeas>>(result, a2);
    }

    std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void sub_2613F3418(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<RoseSyntheticApertureFiltering::InternalExpectedRangeMeas>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t RoseSyntheticApertureFiltering::PRRoseSyntheticApertureBatchFilter::measModelBatchAlt(uint64_t a1, uint64_t a2, uint64_t a3, double **a4, double **a5, uint64_t a6, uint64_t a7)
{
  v11 = *a6;
  v12 = *(a6 + 8);
  if (*a6 != v12)
  {
    v13 = v12 - 128;
    do
    {
      *(v12 - 64) = &unk_2873C4140;
      *(v12 - 128) = &unk_2873C4140;
      v13 -= 136;
      v12 -= 136;
    }

    while (v12 != v11);
    *(a6 + 8) = v11;
    std::vector<RoseSyntheticApertureFiltering::InternalExpectedRangeMeas>::reserve(a6, 0x6DB6DB6DB6DB6DB7 * ((a4[1] - *a4) >> 4));
  }

  v14 = *a7;
  v15 = *(a7 + 8);
  if (*a7 != v15)
  {
    v16 = v15 - 176;
    do
    {
      *(v15 - 88) = &unk_2873C4140;
      *(v15 - 176) = &unk_2873C4140;
      v16 -= 192;
      v15 -= 192;
    }

    while (v15 != v14);
    *(a7 + 8) = v14;
    std::vector<RoseSyntheticApertureFiltering::InternalExpectedAoAMeas>::reserve(a7, 0x4EC4EC4EC4EC4EC5 * ((a5[1] - *a5) >> 4));
  }

  v41 = a5;
  v73 = 0x100000003;
  v71 = &unk_2873C40E8;
  v72 = xmmword_261415AA0;
  v74 = &v75;
  v68 = 0x300000003;
  v67 = xmmword_261415D50;
  v66 = &unk_2873C4240;
  v69 = &v70;
  result = RoseSyntheticApertureFiltering::rhoThPhi2pos(a2, &v71, &v66);
  v18 = *a4;
  v19 = a4[1];
  if (*a4 != v19)
  {
    do
    {
      v62 = 0x100000001;
      v60 = &unk_2873C4430;
      *&v20 = 0x100000001;
      *(&v20 + 1) = 0x100000001;
      v61 = v20;
      v63 = v64;
      v57 = 0x300000001;
      v55 = &unk_2873C4288;
      v56 = xmmword_261415DE0;
      v58 = v59;
      v51 = 0x100000003;
      v49 = &unk_2873C40E8;
      v50 = xmmword_261415AA0;
      v52 = v53;
      cnmatrix::Subtract<double>((v18 + 5), a3, &v49);
      RoseSyntheticApertureFiltering::measModelRangeAlt(a2, &v66, &v71, &v49, &v60, &v55);
      v22 = v18[3];
      v21 = v18[4];
      v23 = v18[2];
      v24 = cnmatrix::CNMatrixBase<double>::operator()(&v60, 0);
      v25 = 1.0 / (v22 * v21);
      v65 = v23 - v25 * *v24;
      v51 = 0x300000001;
      v49 = &unk_2873C4288;
      v50 = xmmword_261415DE0;
      v52 = v53;
      cnmatrix::Multiply<double>(&v55, &v49, v25);
      v26 = 0;
      v46 = 0x100000003;
      v44 = &unk_2873C40E8;
      v45 = xmmword_261415AA0;
      v47 = v48;
      do
      {
        v27 = cnmatrix::CNMatrixBase<double>::operator()(&v49, v26);
        *cnmatrix::CNMatrixBase<double>::operator()(&v44, v26++) = v27;
      }

      while (v26 != 3);
      v28 = *(a6 + 8);
      if (v28 >= *(a6 + 16))
      {
        result = std::vector<RoseSyntheticApertureFiltering::InternalExpectedRangeMeas>::__emplace_back_slow_path<double const&,cnmatrix::CNMatrix<1u,3u,double> const&,cnmatrix::CNMatrix<3u,1u,double> &>(a6, &v65, &v49, &v44);
      }

      else
      {
        RoseSyntheticApertureFiltering::InternalExpectedRangeMeas::InternalExpectedRangeMeas(*(a6 + 8), &v49, &v44, v65);
        result = v28 + 136;
        *(a6 + 8) = v28 + 136;
      }

      *(a6 + 8) = result;
      v18 += 14;
    }

    while (v18 != v19);
  }

  v29 = *v41;
  v30 = v41[1];
  if (*v41 != v30)
  {
    do
    {
      v62 = 0x100000002;
      v60 = &unk_2873C4478;
      v61 = xmmword_261415DB0;
      v63 = v64;
      v57 = 0x300000002;
      v55 = &unk_2873C42D0;
      v56 = xmmword_261415DF0;
      v58 = v59;
      v51 = 0x100000003;
      v49 = &unk_2873C40E8;
      v50 = xmmword_261415AA0;
      v52 = v53;
      cnmatrix::Subtract<double>((v29 + 4), a3, &v49);
      RoseSyntheticApertureFiltering::measModelAoAAlt(a2, &v66, &v71, &v49, (v29 + 12), &v60, &v55);
      v31 = v29[3];
      v32 = v29[1];
      v33 = cnmatrix::CNMatrixBase<double>::operator()(&v60, 0);
      v34 = 1.0 / v31;
      v35 = fmod(v31 * v32 - *v33 + 3.14159265, 6.28318531);
      if (v35 < 0.0)
      {
        v35 = v35 + 6.28318531;
      }

      v65 = v34 * (v35 + -3.14159265);
      v36 = v29[2];
      v54 = v36 - v34 * *cnmatrix::CNMatrixBase<double>::operator()(&v60, 1u);
      v51 = 0x300000002;
      v49 = &unk_2873C42D0;
      v50 = xmmword_261415DF0;
      v52 = v53;
      cnmatrix::Multiply<double>(&v55, &v49, v34);
      v37 = 0;
      v46 = 0x200000003;
      v44 = &unk_2873C4318;
      v45 = xmmword_261415E00;
      v47 = v48;
      do
      {
        v38 = cnmatrix::CNMatrixBase<double>::operator()(&v49, 0, v37);
        *cnmatrix::CNMatrixBase<double>::operator()(&v44, v37, 0) = v38;
        v39 = cnmatrix::CNMatrixBase<double>::operator()(&v49, 1, v37);
        *cnmatrix::CNMatrixBase<double>::operator()(&v44, v37++, 1) = v39;
      }

      while (v37 != 3);
      v40 = *(a7 + 8);
      if (v40 >= *(a7 + 16))
      {
        result = std::vector<RoseSyntheticApertureFiltering::InternalExpectedAoAMeas>::__emplace_back_slow_path<double const&,double const&,cnmatrix::CNMatrix<2u,3u,double> const&,cnmatrix::CNMatrix<3u,2u,double> &>(a7, &v65, &v54, &v49, &v44);
      }

      else
      {
        RoseSyntheticApertureFiltering::InternalExpectedAoAMeas::InternalExpectedAoAMeas(*(a7 + 8), &v49, &v44, v65, v54);
        result = v40 + 192;
        *(a7 + 8) = v40 + 192;
      }

      *(a7 + 8) = result;
      v29 += 26;
    }

    while (v29 != v30);
  }

  return result;
}

uint64_t std::vector<cnmatrix::CNMatrix<3u,1u,double>>::push_back[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = std::vector<cnmatrix::CNMatrix<3u,1u,double>>::__emplace_back_slow_path<cnmatrix::CNMatrix<3u,1u,double> const&>(a1, a2);
  }

  else
  {
    cnmatrix::CNMatrix<3u,1u,double>::CNMatrix(a1[1], a2);
    result = v3 + 64;
    a1[1] = v3 + 64;
  }

  a1[1] = result;
  return result;
}

uint64_t std::vector<RoseSyntheticApertureFiltering::FilterInitializationResult>::push_back[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<RoseSyntheticApertureFiltering::FilterInitializationResult>::__emplace_back_slow_path<RoseSyntheticApertureFiltering::FilterInitializationResult>(a1, a2);
  }

  else
  {
    std::vector<RoseSyntheticApertureFiltering::FilterInitializationResult>::__construct_one_at_end[abi:ne200100]<RoseSyntheticApertureFiltering::FilterInitializationResult>(a1, a2);
    result = v3 + 376;
  }

  *(a1 + 8) = result;
  return result;
}

{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<RoseSyntheticApertureFiltering::FilterInitializationResult>::__emplace_back_slow_path<RoseSyntheticApertureFiltering::FilterInitializationResult const&>(a1, a2);
  }

  else
  {
    std::allocator_traits<std::allocator<RoseSyntheticApertureFiltering::FilterInitializationResult>>::construct[abi:ne200100]<RoseSyntheticApertureFiltering::FilterInitializationResult,RoseSyntheticApertureFiltering::FilterInitializationResult const&,0>(a1, *(a1 + 8), a2);
    result = v3 + 376;
    *(a1 + 8) = v3 + 376;
  }

  *(a1 + 8) = result;
  return result;
}

void RoseSyntheticApertureFiltering::PRRoseSyntheticApertureBatchFilter::initializeFilterWithGuess(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, double **a4@<X3>, uint64_t a5@<X8>)
{
  cnmatrix::CNMatrix<3u,1u,double>::CNMatrix(v82, a2);
  v79 = 0x100000003;
  v78 = xmmword_261415AA0;
  v77 = &unk_2873C40E8;
  v80 = &v81;
  GNStep = RoseSyntheticApertureFiltering::PRRoseSyntheticApertureBatchFilter::generateGNStep(a1, v82, a3, a4, &v77);
  v74 = 0x100000003;
  v73 = xmmword_261415AA0;
  v72 = &unk_2873C40E8;
  v75 = &v76;
  if (*(a1 + 944) < 1)
  {
    v17 = 0;
    v9 = 1;
  }

  else
  {
    v9 = 1;
LABEL_3:
    cnmatrix::CNMatrixBase<double>::operator=(&v72, &v77);
    v10 = 0;
    while (v10 < *(a1 + 948))
    {
      v85 = 0x100000003;
      v84 = xmmword_261415AA0;
      v83 = &unk_2873C40E8;
      v86 = v87;
      cnmatrix::Add<double>(v82, &v72, &v83);
      v11 = RoseSyntheticApertureFiltering::PRRoseSyntheticApertureBatchFilter::generateGNStep(a1, &v83, a3, a4, &v77);
      if (v11 < GNStep)
      {
        v85 = 0x100000003;
        v84 = xmmword_261415AA0;
        v83 = &unk_2873C40E8;
        v86 = v87;
        cnmatrix::Add<double>(v82, &v72, &v83);
        cnmatrix::CNMatrixBase<double>::operator=(v82, &v83);
        v63 = 0x100000003;
        v62 = xmmword_261415AA0;
        v61 = &unk_2873C40E8;
        v64 = v65;
        v85 = 0x100000134;
        v84 = xmmword_261415AD0;
        v83 = &unk_2873C41B8;
        v86 = v87;
        v58 = 0x100000003;
        v57 = xmmword_261415AA0;
        v56 = &unk_2873C40E8;
        v59 = v60;
        cnmatrix::Norm<double>(&v72, &v61, &v83, &v56, "2");
        v14 = v15 < *(a1 + 952) || (GNStep - v11) / GNStep < *(a1 + 960);
        ++v9;
        GNStep = v11;
LABEL_15:
        if (v9 > *(a1 + 944) || v14)
        {
          v17 = 0;
          goto LABEL_22;
        }

        goto LABEL_3;
      }

      v12 = 0;
      ++v10;
      do
      {
        v13 = *cnmatrix::CNMatrixBase<double>::operator()(&v72, v12);
        *cnmatrix::CNMatrixBase<double>::operator()(&v72, v12++) = v13 * 0.5;
      }

      while (v12 != 3);
      if (v11 < GNStep)
      {
        v14 = 0;
        goto LABEL_15;
      }
    }

    v17 = 1;
  }

LABEL_22:
  v70 = 0;
  v69 = 0;
  v71 = 0;
  v67 = 0;
  v66 = 0;
  v68 = 0;
  std::vector<RoseSyntheticApertureFiltering::InternalExpectedRangeMeas>::reserve(&v69, 0x6DB6DB6DB6DB6DB7 * ((*(a3 + 8) - *a3) >> 4));
  v18 = std::vector<RoseSyntheticApertureFiltering::InternalExpectedAoAMeas>::reserve(&v66, 0x4EC4EC4EC4EC4EC5 * ((a4[1] - *a4) >> 4));
  RoseSyntheticApertureFiltering::PRRoseSyntheticApertureBatchFilter::measModelBatch(v18, v82, a3, a4, &v69, &v66);
  v37 = v17;
  v85 = 0x300000003;
  v84 = xmmword_261415D50;
  v83 = &unk_2873C4240;
  v86 = v87;
  cnmatrix::FastResize<double>(&v83, 3, 3);
  v19 = 0.0;
  cnmatrix::CNMatrixBase<double>::WriteValue(&v83, 0.0);
  v20 = v69;
  v21 = v70;
  if (v69 != v70)
  {
    do
    {
      v22 = v20 + 1;
      v23 = *v20;
      v58 = 0x300000003;
      v56 = &unk_2873C4240;
      v57 = xmmword_261415D50;
      v59 = v60;
      cnmatrix::Multiply<double>((v20 + 9), (v20 + 1), &v56);
      v63 = 0x300000003;
      v62 = xmmword_261415D50;
      v61 = &unk_2873C4240;
      v64 = v65;
      cnmatrix::Add<double>(&v83, &v56, &v61);
      cnmatrix::CNMatrixBase<double>::operator=(&v83, &v61);
      v19 = v19 + v23 * v23;
      v20 = v22 + 16;
    }

    while (v22 + 16 != v21);
  }

  v24 = v66;
  v25 = v67;
  if (v66 != v67)
  {
    do
    {
      v26 = *v24;
      v27 = v24[1];
      v58 = 0x300000003;
      v56 = &unk_2873C4240;
      v57 = xmmword_261415D50;
      v28 = v24 + 2;
      v59 = v60;
      cnmatrix::Multiply<double>((v24 + 13), (v24 + 2), &v56);
      v63 = 0x300000003;
      v62 = xmmword_261415D50;
      v61 = &unk_2873C4240;
      v64 = v65;
      cnmatrix::Add<double>(&v83, &v56, &v61);
      cnmatrix::CNMatrixBase<double>::operator=(&v83, &v61);
      v19 = v19 + v27 * v27 + v26 * v26;
      v24 = v28 + 22;
    }

    while (v28 + 22 != v25);
  }

  cnmatrix::CNMatrix<3u,3u,double>::CNMatrix(&v61, &v83);
  v53 = 0;
  v54 = 0;
  v55 = 0;
  v50 = 0;
  v51 = 0;
  v52 = 0;
  std::vector<RoseSyntheticApertureFiltering::InternalExpectedRangeMeas>::reserve(&v53, 0x6DB6DB6DB6DB6DB7 * ((*(a3 + 8) - *a3) >> 4));
  std::vector<RoseSyntheticApertureFiltering::InternalExpectedAoAMeas>::reserve(&v50, 0x4EC4EC4EC4EC4EC5 * ((a4[1] - *a4) >> 4));
  v58 = 0x100000003;
  v57 = xmmword_261415AA0;
  v56 = &unk_2873C40E8;
  v59 = v60;
  cnmatrix::Subtract<double>(v82, a1 + 168, &v56);
  RoseSyntheticApertureFiltering::pos2rangeThPhi(&v56, v49);
  RoseSyntheticApertureFiltering::PRRoseSyntheticApertureBatchFilter::measModelBatchAlt(v29, v49, a1 + 168, a3, a4, &v53, &v50);
  v58 = 0x300000003;
  v57 = xmmword_261415D50;
  v56 = &unk_2873C4240;
  v59 = v60;
  cnmatrix::FastResize<double>(&v56, 3, 3);
  cnmatrix::CNMatrixBase<double>::WriteValue(&v56, 0.0);
  v30 = v53;
  for (i = v54; v30 != i; v30 += 136)
  {
    v41 = 0x300000003;
    v39 = &unk_2873C4240;
    v40 = xmmword_261415D50;
    v42 = v43;
    cnmatrix::Multiply<double>(v30 + 72, v30 + 8, &v39);
    v46 = 0x300000003;
    v44 = &unk_2873C4240;
    v45 = xmmword_261415D50;
    v47 = v48;
    cnmatrix::Add<double>(&v56, &v39, &v44);
    cnmatrix::CNMatrixBase<double>::operator=(&v56, &v44);
  }

  v32 = v50;
  for (j = v51; v32 != j; v32 += 192)
  {
    v41 = 0x300000003;
    v39 = &unk_2873C4240;
    v40 = xmmword_261415D50;
    v42 = v43;
    cnmatrix::Multiply<double>(v32 + 104, v32 + 16, &v39);
    v46 = 0x300000003;
    v44 = &unk_2873C4240;
    v45 = xmmword_261415D50;
    v47 = v48;
    cnmatrix::Add<double>(&v56, &v39, &v44);
    cnmatrix::CNMatrixBase<double>::operator=(&v56, &v44);
  }

  cnmatrix::CNMatrix<3u,3u,double>::CNMatrix(&v44, &v56);
  v34 = (v37 & 1) != 0 || v9 <= *(a1 + 944);
  v35 = *a4;
  v36 = a4[1];
  *a5 = v34;
  cnmatrix::CNMatrix<3u,1u,double>::CNMatrix(a5 + 8, v82);
  cnmatrix::CNMatrix<3u,1u,double>::CNMatrix(a5 + 72, v49);
  cnmatrix::CNMatrix<3u,3u,double>::CNMatrix(a5 + 136, &v61);
  cnmatrix::CNMatrix<3u,3u,double>::CNMatrix(a5 + 248, &v44);
  *(a5 + 360) = v19;
  *(a5 + 368) = v35 == v36;
  v56 = &v50;
  std::vector<RoseSyntheticApertureFiltering::InternalExpectedAoAMeas>::__destroy_vector::operator()[abi:ne200100](&v56);
  v56 = &v53;
  std::vector<RoseSyntheticApertureFiltering::InternalExpectedRangeMeas>::__destroy_vector::operator()[abi:ne200100](&v56);
  v83 = &v66;
  std::vector<RoseSyntheticApertureFiltering::InternalExpectedAoAMeas>::__destroy_vector::operator()[abi:ne200100](&v83);
  v83 = &v69;
  std::vector<RoseSyntheticApertureFiltering::InternalExpectedRangeMeas>::__destroy_vector::operator()[abi:ne200100](&v83);
}

uint64_t std::vector<RoseSyntheticApertureFiltering::FilterInitializationResult>::erase(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != a2)
  {
    std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<RoseSyntheticApertureFiltering::FilterInitializationResult *,RoseSyntheticApertureFiltering::FilterInitializationResult *,RoseSyntheticApertureFiltering::FilterInitializationResult *>(&v7, a3, *(a1 + 8), a2);
    std::vector<RoseSyntheticApertureFiltering::FilterInitializationResult>::__base_destruct_at_end[abi:ne200100](a1, v5);
  }

  return a2;
}

void RoseSyntheticApertureFiltering::PRRoseSyntheticApertureBatchFilter::checkFoVBatch(uint64_t a1@<X1>, uint64_t a2@<X2>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v3 = *a2;
  v4 = *(a2 + 8);
  if (*a2 != v4)
  {
    do
    {
      if (RoseSyntheticApertureFiltering::PRRoseSyntheticApertureBatchFilter::checkFoV(a1, v3))
      {
        std::vector<RoseSyntheticApertureFiltering::InternalAoAMeas>::push_back[abi:ne200100](a3, v3);
      }

      v3 += 13;
    }

    while (v3 != v4);
  }
}

void sub_2613F47B8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<RoseSyntheticApertureFiltering::InternalAoAMeas>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

BOOL RoseSyntheticApertureFiltering::PRRoseSyntheticApertureBatchFilter::checkFoV(uint64_t a1, uint64_t a2)
{
  v13 = 0x100000003;
  v11 = &unk_2873C40E8;
  v12 = xmmword_261415AA0;
  v14 = &v15;
  cnmatrix::Subtract<double>(a1, a2 + 32, &v11);
  v8 = 0x100000003;
  v6 = &unk_2873C40E8;
  v7 = xmmword_261415AA0;
  v9 = &v10;
  cnmatrix::Multiply<double>(a2 + 96, &v11, &v6);
  v3 = cnmatrix::CNMatrixBase<double>::operator()(&v6, 2u);
  v28 = 0x100000003;
  v26 = &unk_2873C40E8;
  v27 = xmmword_261415AA0;
  v29 = &v30;
  v23 = 0x100000134;
  v22 = xmmword_261415AD0;
  v21 = &unk_2873C41B8;
  v24 = &v25;
  v18 = 0x100000003;
  v17 = xmmword_261415AA0;
  v16 = &unk_2873C40E8;
  v19 = &v20;
  cnmatrix::Norm<double>(&v6, &v26, &v21, &v16, "2");
  return acos(-v3 / v4) * 180.0 / 3.14159265 <= 60.0;
}

double RoseSyntheticApertureFiltering::PRRoseSyntheticApertureBatchFilter::generateGNStep(uint64_t a1, uint64_t a2, uint64_t a3, double **a4, uint64_t a5)
{
  v9 = (*(a3 + 8) - *a3) >> 4;
  v45 = 0;
  v46 = 0;
  v47 = 0;
  v42 = 0;
  v43 = 0;
  v44 = 0;
  v10 = std::vector<RoseSyntheticApertureFiltering::InternalExpectedRangeMeas>::reserve(&v45, 0x6DB6DB6DB6DB6DB7 * v9);
  RoseSyntheticApertureFiltering::PRRoseSyntheticApertureBatchFilter::measModelBatch(v10, a2, a3, a4, &v45, &v42);
  v39 = 0x300000003;
  v38 = xmmword_261415D50;
  v37 = &unk_2873C4240;
  v40 = &v41;
  cnmatrix::FastResize<double>(&v37, 3, 3);
  cnmatrix::CNMatrixBase<double>::WriteValue(&v37, 0.0);
  v34 = 0x100000003;
  v33 = xmmword_261415AA0;
  v32 = &unk_2873C40E8;
  v35 = &v36;
  cnmatrix::FastResize<double>(&v32, 3, 1);
  v11 = 0.0;
  cnmatrix::CNMatrixBase<double>::WriteValue(&v32, 0.0);
  v12 = v45;
  v13 = v46;
  if (v45 != v46)
  {
    do
    {
      v14 = (v12 + 1);
      v15 = *v12;
      v29 = 0x300000003;
      v27 = &unk_2873C4240;
      v28 = xmmword_261415D50;
      v30 = v31;
      cnmatrix::Multiply<double>((v12 + 9), (v12 + 1), &v27);
      v50 = 0x300000003;
      v49 = xmmword_261415D50;
      v48 = &unk_2873C4240;
      v51 = v52;
      cnmatrix::Add<double>(&v37, &v27, &v48);
      cnmatrix::CNMatrixBase<double>::operator=(&v37, &v48);
      v29 = 0x100000003;
      v27 = &unk_2873C40E8;
      v28 = xmmword_261415AA0;
      v30 = v31;
      v14 += 64;
      cnmatrix::Multiply<double>(v14, &v27, v15);
      v50 = 0x100000003;
      v49 = xmmword_261415AA0;
      v48 = &unk_2873C40E8;
      v51 = v52;
      cnmatrix::Add<double>(&v32, &v27, &v48);
      cnmatrix::CNMatrixBase<double>::operator=(&v32, &v48);
      v11 = v11 + v15 * v15;
      v12 = (v14 + 64);
    }

    while ((v14 + 64) != v13);
  }

  v16 = v42;
  v17 = v43;
  if (v42 != v43)
  {
    do
    {
      v18 = *v16;
      v19 = v16[1];
      v29 = 0x300000003;
      v27 = &unk_2873C4240;
      v28 = xmmword_261415D50;
      v20 = (v16 + 2);
      v30 = v31;
      cnmatrix::Multiply<double>((v16 + 13), (v16 + 2), &v27);
      v50 = 0x300000003;
      v49 = xmmword_261415D50;
      v48 = &unk_2873C4240;
      v51 = v52;
      cnmatrix::Add<double>(&v37, &v27, &v48);
      cnmatrix::CNMatrixBase<double>::operator=(&v37, &v48);
      v24 = 0x100000002;
      v22 = &unk_2873C4478;
      v23 = xmmword_261415DB0;
      v25 = v26;
      *cnmatrix::CNMatrixBase<double>::operator()(&v22, 0) = v18;
      *cnmatrix::CNMatrixBase<double>::operator()(&v22, 1u) = v19;
      v29 = 0x100000003;
      v27 = &unk_2873C40E8;
      v28 = xmmword_261415AA0;
      v30 = v31;
      v20 += 88;
      cnmatrix::Multiply<double>(v20, &v22, &v27);
      v50 = 0x100000003;
      v49 = xmmword_261415AA0;
      v48 = &unk_2873C40E8;
      v51 = v52;
      cnmatrix::Add<double>(&v32, &v27, &v48);
      cnmatrix::CNMatrixBase<double>::operator=(&v32, &v48);
      v11 = v11 + v19 * v19 + v18 * v18;
      v16 = (v20 + 88);
    }

    while ((v20 + 88) != v17);
  }

  v29 = 0x300000003;
  v27 = &unk_2873C4240;
  v28 = xmmword_261415D50;
  v30 = v31;
  v55 = 0x100000003;
  v53 = &unk_2873C4360;
  v54 = xmmword_261415AA0;
  v56 = &v57;
  v50 = 0x10000000CLL;
  v49 = xmmword_261415DA0;
  v48 = &unk_2873C43E8;
  v51 = v52;
  cnmatrix::Inv<double>(&v37, &v53, &v48, &v27);
  v24 = 0x100000003;
  v22 = &unk_2873C40E8;
  v23 = xmmword_261415AA0;
  v25 = v26;
  cnmatrix::Multiply<double>(&v27, &v32, &v22);
  cnmatrix::CNMatrixBase<double>::operator=(a5, &v22);
  v48 = &v42;
  std::vector<RoseSyntheticApertureFiltering::InternalExpectedAoAMeas>::__destroy_vector::operator()[abi:ne200100](&v48);
  v48 = &v45;
  std::vector<RoseSyntheticApertureFiltering::InternalExpectedRangeMeas>::__destroy_vector::operator()[abi:ne200100](&v48);
  return v11;
}

void sub_2613F4F54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, char a62, uint64_t a63)
{
  a68 = &a62;
  std::vector<RoseSyntheticApertureFiltering::InternalExpectedAoAMeas>::__destroy_vector::operator()[abi:ne200100](&a68);
  a68 = &a65;
  std::vector<RoseSyntheticApertureFiltering::InternalExpectedRangeMeas>::__destroy_vector::operator()[abi:ne200100](&a68);
  _Unwind_Resume(a1);
}

void *std::vector<RoseSyntheticApertureFiltering::InternalExpectedAoAMeas>::reserve(void *result, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((result[2] - *result) >> 6) < a2)
  {
    if (a2 < 0x155555555555556)
    {
      v2 = result[1] - *result;
      v3 = result;
      std::__allocate_at_least[abi:ne200100]<std::allocator<RoseSyntheticApertureFiltering::InternalExpectedAoAMeas>>(result, a2);
    }

    std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void sub_2613F5090(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<RoseSyntheticApertureFiltering::InternalExpectedAoAMeas>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void RoseSyntheticApertureFiltering::PRRoseSyntheticApertureBatchFilter::measModelBatch(uint64_t a1, uint64_t a2, double **a3, double **a4, uint64_t a5, uint64_t a6)
{
  v10 = *a5;
  v11 = *(a5 + 8);
  if (*a5 != v11)
  {
    v12 = v11 - 128;
    do
    {
      *(v11 - 64) = &unk_2873C4140;
      *(v11 - 128) = &unk_2873C4140;
      v12 -= 136;
      v11 -= 136;
    }

    while (v11 != v10);
    *(a5 + 8) = v10;
    std::vector<RoseSyntheticApertureFiltering::InternalExpectedRangeMeas>::reserve(a5, 0x6DB6DB6DB6DB6DB7 * ((a3[1] - *a3) >> 4));
  }

  v13 = *a6;
  v14 = *(a6 + 8);
  if (*a6 != v14)
  {
    v15 = v14 - 176;
    do
    {
      *(v14 - 88) = &unk_2873C4140;
      *(v14 - 176) = &unk_2873C4140;
      v15 -= 192;
      v14 -= 192;
    }

    while (v14 != v13);
    *(a6 + 8) = v13;
    std::vector<RoseSyntheticApertureFiltering::InternalExpectedAoAMeas>::reserve(a6, 0x4EC4EC4EC4EC4EC5 * ((a4[1] - *a4) >> 4));
  }

  v41 = a4;
  v16 = *a3;
  v17 = a3[1];
  if (*a3 != v17)
  {
    do
    {
      v61 = 0x100000001;
      v59 = &unk_2873C4430;
      *&v18 = 0x100000001;
      *(&v18 + 1) = 0x100000001;
      v60 = v18;
      v62 = v63;
      v56 = 0x300000001;
      v54 = &unk_2873C4288;
      v55 = xmmword_261415DE0;
      v57 = v58;
      RoseSyntheticApertureFiltering::measModelRange(a2, (v16 + 5), &v59, &v54);
      v20 = v16[3];
      v19 = v16[4];
      v21 = v16[2];
      v22 = cnmatrix::CNMatrixBase<double>::operator()(&v59, 0);
      v23 = 1.0 / (v20 * v19);
      v64[0] = v21 - v23 * *v22;
      v50 = 0x300000001;
      v48 = &unk_2873C4288;
      v49 = xmmword_261415DE0;
      v51 = v52;
      cnmatrix::Multiply<double>(&v54, &v48, v23);
      v24 = 0;
      v45 = 0x100000003;
      v43 = &unk_2873C40E8;
      v44 = xmmword_261415AA0;
      v46 = v47;
      do
      {
        v25 = cnmatrix::CNMatrixBase<double>::operator()(&v48, v24);
        *cnmatrix::CNMatrixBase<double>::operator()(&v43, v24++) = v25;
      }

      while (v24 != 3);
      v26 = *(a5 + 8);
      if (v26 >= *(a5 + 16))
      {
        v27 = std::vector<RoseSyntheticApertureFiltering::InternalExpectedRangeMeas>::__emplace_back_slow_path<double const&,cnmatrix::CNMatrix<1u,3u,double> const&,cnmatrix::CNMatrix<3u,1u,double> &>(a5, v64, &v48, &v43);
      }

      else
      {
        RoseSyntheticApertureFiltering::InternalExpectedRangeMeas::InternalExpectedRangeMeas(*(a5 + 8), &v48, &v43, v64[0]);
        v27 = v26 + 136;
        *(a5 + 8) = v26 + 136;
      }

      *(a5 + 8) = v27;
      v16 += 14;
    }

    while (v16 != v17);
  }

  v28 = *v41;
  v29 = v41[1];
  if (*v41 != v29)
  {
    do
    {
      v61 = 0x100000002;
      v59 = &unk_2873C4478;
      v60 = xmmword_261415DB0;
      v62 = v63;
      v56 = 0x300000002;
      v54 = &unk_2873C42D0;
      v55 = xmmword_261415DF0;
      v57 = v58;
      RoseSyntheticApertureFiltering::measModelAoA(a2, (v28 + 4), (v28 + 12), &v59, &v54);
      v30 = v28[3];
      v31 = v28[1];
      v32 = cnmatrix::CNMatrixBase<double>::operator()(&v59, 0);
      v33 = 1.0 / v30;
      v34 = fmod(v30 * v31 - *v32 + 3.14159265, 6.28318531);
      if (v34 < 0.0)
      {
        v34 = v34 + 6.28318531;
      }

      v64[0] = v33 * (v34 + -3.14159265);
      v35 = v28[2];
      v53 = v35 - v33 * *cnmatrix::CNMatrixBase<double>::operator()(&v59, 1u);
      v50 = 0x300000002;
      v48 = &unk_2873C42D0;
      v49 = xmmword_261415DF0;
      v51 = v52;
      cnmatrix::Multiply<double>(&v54, &v48, 1.0 / v30);
      v36 = 0;
      v45 = 0x200000003;
      v43 = &unk_2873C4318;
      v44 = xmmword_261415E00;
      v46 = v47;
      do
      {
        v37 = cnmatrix::CNMatrixBase<double>::operator()(&v48, 0, v36);
        *cnmatrix::CNMatrixBase<double>::operator()(&v43, v36, 0) = v37;
        v38 = cnmatrix::CNMatrixBase<double>::operator()(&v48, 1, v36);
        *cnmatrix::CNMatrixBase<double>::operator()(&v43, v36++, 1) = v38;
      }

      while (v36 != 3);
      v39 = *(a6 + 8);
      if (v39 >= *(a6 + 16))
      {
        v40 = std::vector<RoseSyntheticApertureFiltering::InternalExpectedAoAMeas>::__emplace_back_slow_path<double const&,double const&,cnmatrix::CNMatrix<2u,3u,double> const&,cnmatrix::CNMatrix<3u,2u,double> &>(a6, v64, &v53, &v48, &v43);
      }

      else
      {
        RoseSyntheticApertureFiltering::InternalExpectedAoAMeas::InternalExpectedAoAMeas(*(a6 + 8), &v48, &v43, v64[0], v53);
        v40 = v39 + 192;
        *(a6 + 8) = v39 + 192;
      }

      *(a6 + 8) = v40;
      v28 += 26;
    }

    while (v28 != v29);
  }
}

void *std::vector<cnmatrix::CNMatrix<2u,1u,double>>::reserve(void *result, unint64_t a2)
{
  if (0x6DB6DB6DB6DB6DB7 * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 < 0x492492492492493)
    {
      v2 = result[1] - *result;
      v3 = result;
      std::__allocate_at_least[abi:ne200100]<std::allocator<cnmatrix::CNMatrix<2u,1u,double>>>(result, a2);
    }

    std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void sub_2613F586C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<cnmatrix::CNMatrix<2u,1u,double>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void cnmatrix::Eig<2u,2u,2u,2u,2u,2u,double>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v32 = 0x200000002;
  v30 = &unk_2873C4508;
  v31 = xmmword_261415DD0;
  v33 = &v34;
  v27 = 0x200000002;
  v25 = &unk_2873C4508;
  v26 = xmmword_261415DD0;
  v28 = &v29;
  v22 = 0x200000002;
  v20 = &unk_2873C4508;
  v21 = xmmword_261415DD0;
  v23 = &v24;
  v17 = 0x100000002;
  v15 = &unk_2873C4478;
  v16 = xmmword_261415DB0;
  v18 = &v19;
  v12 = 0x200000002;
  v10 = &unk_2873C4508;
  v11 = xmmword_261415DD0;
  v13 = &v14;
  v7 = 0x1000000A8;
  v5 = &unk_2873C4598;
  v6 = xmmword_261415E10;
  v8 = &v9;
  cnmatrix::Eig<double>(a1, &v30, a3, &v25, a2, &v20, &v15, &v10, &v5);
  if (DWORD2(v26))
  {
    v3 = 0;
    while (*cnmatrix::CNMatrixBase<double>::operator()(&v25, v3) == 0.0)
    {
      if (++v3 >= DWORD2(v26))
      {
        goto LABEL_6;
      }
    }

    cnprint::CNPrinter::Print();
  }

LABEL_6:
  if (DWORD2(v21))
  {
    v4 = 0;
    while (*cnmatrix::CNMatrixBase<double>::operator()(&v20, v4) == 0.0)
    {
      if (++v4 >= DWORD2(v21))
      {
        return;
      }
    }

    cnprint::CNPrinter::Print();
  }
}

void *std::vector<double>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 3)
  {
    if (!(a2 >> 61))
    {
      v2 = result[1] - *result;
      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(result, a2);
    }

    std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

uint64_t std::vector<RoseSyntheticApertureFiltering::InternalAoAMeas>::push_back[abi:ne200100](uint64_t a1, _OWORD *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<RoseSyntheticApertureFiltering::InternalAoAMeas>::__emplace_back_slow_path<RoseSyntheticApertureFiltering::InternalAoAMeas const&>(a1, a2);
  }

  else
  {
    std::allocator<RoseSyntheticApertureFiltering::InternalAoAMeas>::construct[abi:ne200100]<RoseSyntheticApertureFiltering::InternalAoAMeas,RoseSyntheticApertureFiltering::InternalAoAMeas const&>(a1, *(a1 + 8), a2);
    result = v3 + 208;
    *(a1 + 8) = v3 + 208;
  }

  *(a1 + 8) = result;
  return result;
}

void RoseSyntheticApertureFiltering::PRRoseSyntheticApertureBatchFilter::checkFoVBatchMultiple(uint64_t *a1@<X1>, uint64_t a2@<X2>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v3 = *a2;
  v4 = *(a2 + 8);
  if (*a2 != v4)
  {
    do
    {
      v7 = *a1;
      v8 = a1[1];
      if (*a1 == v8)
      {
        goto LABEL_10;
      }

      v9 = 1;
      do
      {
        while (!v9)
        {
          v9 = 0;
          v7 += 64;
          if (v7 == v8)
          {
            goto LABEL_11;
          }
        }

        v9 = RoseSyntheticApertureFiltering::PRRoseSyntheticApertureBatchFilter::checkFoV(v7, v3);
        v7 += 64;
      }

      while (v7 != v8);
      if (v9)
      {
LABEL_10:
        std::vector<RoseSyntheticApertureFiltering::InternalAoAMeas>::push_back[abi:ne200100](a3, v3);
      }

LABEL_11:
      v3 += 13;
    }

    while (v3 != v4);
  }
}

void sub_2613F5CC8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<RoseSyntheticApertureFiltering::InternalAoAMeas>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::vector<RoseSyntheticApertureFiltering::BatchSolutionParticle>::__init_with_size[abi:ne200100]<RoseSyntheticApertureFiltering::BatchSolutionParticle*,RoseSyntheticApertureFiltering::BatchSolutionParticle*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<RoseSyntheticApertureFiltering::BatchSolutionParticle>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_2613F5D44(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<RoseSyntheticApertureFiltering::BatchSolutionParticle>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x186186186186187)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<RoseSyntheticApertureFiltering::BatchSolutionParticle>>(a1, a2);
  }

  std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<RoseSyntheticApertureFiltering::BatchSolutionParticle>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x186186186186187)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x277D82778], MEMORY[0x277D82620]);
}

void *std::vector<RoseSyntheticApertureFiltering::BatchSolutionParticle>::__assign_with_size[abi:ne200100]<RoseSyntheticApertureFiltering::BatchSolutionParticle*,RoseSyntheticApertureFiltering::BatchSolutionParticle*>(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (0xCF3CF3CF3CF3CF3DLL * ((v7 - *result) >> 3) < a4)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (a4 <= 0x186186186186186)
    {
      v9 = 0xCF3CF3CF3CF3CF3DLL * (v7 >> 3);
      v10 = 2 * v9;
      if (2 * v9 <= a4)
      {
        v10 = a4;
      }

      if (v9 >= 0xC30C30C30C30C3)
      {
        v11 = 0x186186186186186;
      }

      else
      {
        v11 = v10;
      }

      std::vector<RoseSyntheticApertureFiltering::BatchSolutionParticle>::__vallocate[abi:ne200100](v6, v11);
    }

    std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
  }

  v12 = result[1];
  v13 = v12 - v8;
  if (0xCF3CF3CF3CF3CF3DLL * ((v12 - v8) >> 3) >= a4)
  {
    v17 = a3 - __src;
    if (a3 != __src)
    {
      result = memmove(*result, __src, v17 - 4);
    }

    v16 = &v8[v17];
  }

  else
  {
    v14 = &__src[v13];
    if (v12 != v8)
    {
      result = memmove(*result, __src, v13 - 4);
      v12 = v6[1];
    }

    v15 = a3 - v14;
    if (a3 != v14)
    {
      result = memmove(v12, v14, v15 - 4);
    }

    v16 = &v12[v15];
  }

  v6[1] = v16;
  return result;
}

BOOL std::_MinmaxElementLessFunc<RoseSyntheticApertureFiltering::PRRoseSyntheticApertureBatchFilter::spatialBinning(std::vector<RoseSyntheticApertureFiltering::InternalRangeMeas>)::$_0,std::__identity>::operator()[abi:ne200100]<std::__wrap_iter<RoseSyntheticApertureFiltering::InternalRangeMeas const*>>(__int128 **a1, __int128 **a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = **a1;
  v5 = (*a1)[1];
  v14 = *(*a1 + 4);
  v12 = v4;
  v13 = v5;
  cnmatrix::CNMatrix<3u,1u,double>::CNMatrix(v15, v2 + 40);
  v15[16] = *(v2 + 26);
  v10 = *(v3 + 4);
  v8 = *v3;
  v9 = v3[1];
  cnmatrix::CNMatrix<3u,1u,double>::CNMatrix(v11, v3 + 40);
  v11[16] = *(v3 + 26);
  v6 = cnmatrix::CNMatrixBase<double>::operator()(v15, 0);
  return v6 < cnmatrix::CNMatrixBase<double>::operator()(v11, 0);
}

BOOL std::_MinmaxElementLessFunc<RoseSyntheticApertureFiltering::PRRoseSyntheticApertureBatchFilter::spatialBinning(std::vector<RoseSyntheticApertureFiltering::InternalRangeMeas>)::$_1,std::__identity>::operator()[abi:ne200100]<std::__wrap_iter<RoseSyntheticApertureFiltering::InternalRangeMeas const*>>(__int128 **a1, __int128 **a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = **a1;
  v5 = (*a1)[1];
  v14 = *(*a1 + 4);
  v12 = v4;
  v13 = v5;
  cnmatrix::CNMatrix<3u,1u,double>::CNMatrix(v15, v2 + 40);
  v15[16] = *(v2 + 26);
  v10 = *(v3 + 4);
  v8 = *v3;
  v9 = v3[1];
  cnmatrix::CNMatrix<3u,1u,double>::CNMatrix(v11, v3 + 40);
  v11[16] = *(v3 + 26);
  v6 = cnmatrix::CNMatrixBase<double>::operator()(v15, 1u);
  return v6 < cnmatrix::CNMatrixBase<double>::operator()(v11, 1u);
}

BOOL std::_MinmaxElementLessFunc<RoseSyntheticApertureFiltering::PRRoseSyntheticApertureBatchFilter::spatialBinning(std::vector<RoseSyntheticApertureFiltering::InternalRangeMeas>)::$_2,std::__identity>::operator()[abi:ne200100]<std::__wrap_iter<RoseSyntheticApertureFiltering::InternalRangeMeas const*>>(__int128 **a1, __int128 **a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = **a1;
  v5 = (*a1)[1];
  v14 = *(*a1 + 4);
  v12 = v4;
  v13 = v5;
  cnmatrix::CNMatrix<3u,1u,double>::CNMatrix(v15, v2 + 40);
  v15[16] = *(v2 + 26);
  v10 = *(v3 + 4);
  v8 = *v3;
  v9 = v3[1];
  cnmatrix::CNMatrix<3u,1u,double>::CNMatrix(v11, v3 + 40);
  v11[16] = *(v3 + 26);
  v6 = cnmatrix::CNMatrixBase<double>::operator()(v15, 2u);
  return v6 < cnmatrix::CNMatrixBase<double>::operator()(v11, 2u);
}

void std::__throw_bad_optional_access[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x277D82908] + 16;
  __cxa_throw(exception, MEMORY[0x277D82770], MEMORY[0x277D82618]);
}

double *std::__minmax_element_impl[abi:ne200100]<std::__wrap_iter<double *>,std::__wrap_iter<double *>,std::__identity,std::__less<void,void>>(double *result, double *a2)
{
  v2 = result;
  if (result != a2 && result + 1 != a2)
  {
    v5 = *result;
    v4 = result[1];
    if (v4 < *result)
    {
      ++result;
    }

    v6 = v4 >= *v2 ? v2 + 1 : v2;
    v7 = v2 + 2;
    if (v7 != a2)
    {
      if (v4 >= v5)
      {
        v4 = v5;
      }

      while (v7 + 1 != a2)
      {
        v9 = *v7;
        v8 = v7[1];
        if (v8 >= *v7)
        {
          if (v9 < v4)
          {
            v4 = *v7;
            result = v7;
          }

          if (v8 >= *v6)
          {
            v6 = v7 + 1;
          }
        }

        else
        {
          v4 = *result;
          if (v8 < *result)
          {
            v4 = v7[1];
            result = v7 + 1;
          }

          if (v9 >= *v6)
          {
            v6 = v7;
          }
        }

        v7 += 2;
        if (v7 == a2)
        {
          return result;
        }
      }

      if (*v7 >= *result)
      {
        *v6;
      }

      else
      {
        return v7;
      }
    }
  }

  return result;
}

void cnmatrix::CNMatrix<3u,3u,double>::TransposeDataFootprint(uint64_t a1)
{
  v3 = *MEMORY[0x277D85DE8];
  cnmatrix::CNMatrix<3u,1u,double>::TransposeDataFootprint(a1, v2);
  v1 = *MEMORY[0x277D85DE8];
}

uint64_t cnmatrix::CNMatrix<3u,3u,double>::CNMatrix(uint64_t result, unsigned int a2, unsigned int a3)
{
  *(result + 24) = 0x300000003;
  *(result + 32) = 0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *result = &unk_2873C4240;
  if (a2 > 3)
  {
    v3 = "this->max_num_rows_ >= num_rows";
    v4 = 422;
    goto LABEL_6;
  }

  if (a3 >= 4)
  {
    v3 = "this->max_num_cols_ >= num_cols";
    v4 = 423;
LABEL_6:
    __assert_rtn("SetMatrixSize", "cnmatrixbase.h", v4, v3);
  }

  *(result + 8) = a2;
  *(result + 12) = a3;
  *(result + 16) = a3 * a2;
  *(result + 20) = a2;
  *(result + 32) = result + 40;
  return result;
}

__n128 cnmatrix::CNMatrix<3u,1u,double>::CNMatrix(uint64_t a1, uint64_t a2)
{
  result.n128_u64[0] = 0x100000003;
  *(a1 + 24) = 0x100000003;
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_2873C40E8;
  if (a1 == a2)
  {
    v16 = "this != &(A)";
    v17 = 603;
LABEL_21:
    v18 = "cnmatrix.h";
    v19 = "CNMatrix";
LABEL_22:
    __assert_rtn(v19, v18, v17, v16);
  }

  v3 = *(a2 + 8);
  if (v3 > 3)
  {
    v16 = "this->max_num_rows_ >= num_rows";
    v17 = 422;
LABEL_18:
    v18 = "cnmatrixbase.h";
    v19 = "SetMatrixSize";
    goto LABEL_22;
  }

  v4 = *(a2 + 12);
  if (v4 >= 2)
  {
    v16 = "this->max_num_cols_ >= num_cols";
    v17 = 423;
    goto LABEL_18;
  }

  *(a1 + 8) = v3;
  *(a1 + 12) = v4;
  v5 = v4 * v3;
  *(a1 + 16) = v5;
  *(a1 + 20) = v3;
  v6 = (a1 + 40);
  *(a1 + 32) = a1 + 40;
  if (*(a2 + 8) > 3u)
  {
    v16 = "this->max_num_rows_ >= A.num_rows_";
    v17 = 616;
    goto LABEL_21;
  }

  if (*(a2 + 12) > 1u)
  {
    v16 = "this->max_num_cols_ >= A.num_cols_";
    v17 = 617;
    goto LABEL_21;
  }

  v7 = *(a2 + 16);
  if (v7 > 3)
  {
    v10 = (v7 - 2);
    v11 = *(a2 + 32);
    v12 = (v6 + 8 * v10);
    v13 = (v7 - 1) >> 1;
    v14 = v11;
    do
    {
      v15 = *v14++;
      *v6++ = v15;
      --v13;
    }

    while (v13);
    result = *(v11 + 8 * v10);
    *v12 = result;
  }

  else if (v5)
  {
    v8 = *(a2 + 32);
    do
    {
      v9 = *v8++;
      result.n128_u64[0] = v9;
      *v6 = v9;
      v6 = (v6 + 8);
      --v5;
    }

    while (v5);
  }

  return result;
}

__n128 cnmatrix::CNMatrix<3u,3u,double>::CNMatrix(uint64_t a1, uint64_t a2)
{
  result.n128_u64[0] = 0x300000003;
  *(a1 + 24) = 0x300000003;
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_2873C4240;
  if (a1 == a2)
  {
    v16 = "this != &(A)";
    v17 = 603;
LABEL_21:
    v18 = "cnmatrix.h";
    v19 = "CNMatrix";
LABEL_22:
    __assert_rtn(v19, v18, v17, v16);
  }

  v3 = *(a2 + 8);
  if (v3 > 3)
  {
    v16 = "this->max_num_rows_ >= num_rows";
    v17 = 422;
LABEL_18:
    v18 = "cnmatrixbase.h";
    v19 = "SetMatrixSize";
    goto LABEL_22;
  }

  v4 = *(a2 + 12);
  if (v4 >= 4)
  {
    v16 = "this->max_num_cols_ >= num_cols";
    v17 = 423;
    goto LABEL_18;
  }

  *(a1 + 8) = v3;
  *(a1 + 12) = v4;
  v5 = v4 * v3;
  *(a1 + 16) = v5;
  *(a1 + 20) = v3;
  v6 = (a1 + 40);
  *(a1 + 32) = a1 + 40;
  if (*(a2 + 8) > 3u)
  {
    v16 = "this->max_num_rows_ >= A.num_rows_";
    v17 = 616;
    goto LABEL_21;
  }

  if (*(a2 + 12) > 3u)
  {
    v16 = "this->max_num_cols_ >= A.num_cols_";
    v17 = 617;
    goto LABEL_21;
  }

  v7 = *(a2 + 16);
  if (v7 > 3)
  {
    v10 = (v7 - 2);
    v11 = *(a2 + 32);
    v12 = (v6 + 8 * v10);
    v13 = (v7 - 1) >> 1;
    v14 = v11;
    do
    {
      v15 = *v14++;
      *v6++ = v15;
      --v13;
    }

    while (v13);
    result = *(v11 + 8 * v10);
    *v12 = result;
  }

  else if (v5)
  {
    v8 = *(a2 + 32);
    do
    {
      v9 = *v8++;
      result.n128_u64[0] = v9;
      *v6 = v9;
      v6 = (v6 + 8);
      --v5;
    }

    while (v5);
  }

  return result;
}

void std::vector<RoseSyntheticApertureFiltering::InternalFilterState>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<RoseSyntheticApertureFiltering::InternalFilterState>::__base_destruct_at_end[abi:ne200100](v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void boost::circular_buffer<double,std::allocator<double>>::destroy(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = *(a1 + 32);
  v5 = *a1;
  v6 = v3 - v2;
  v7 = (v3 - v5) >> 3;
  if (v4 < v6 >> 3)
  {
    v7 = 0;
  }

  *(a1 + 16) = v2 + 8 * (v4 - v7);
  if (v5)
  {
    operator delete(v5);
  }
}

void std::vector<RoseSyntheticApertureFiltering::InternalRangeMeas>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v3 = v1[1];
    if (v3 != v2)
    {
      v4 = v3 - 72;
      do
      {
        *(v3 - 9) = &unk_2873C4140;
        v4 -= 112;
        v3 -= 112;
      }

      while (v3 != v2);
    }

    v1[1] = v2;
    operator delete(v2);
  }
}

void std::vector<RoseSyntheticApertureFiltering::InternalAoAMeas>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v3 = v1[1];
    if (v3 != v2)
    {
      v4 = v3 - 176;
      do
      {
        *(v3 - 14) = &unk_2873C4140;
        *(v3 - 22) = &unk_2873C4140;
        v4 -= 208;
        v3 -= 208;
      }

      while (v3 != v2);
    }

    v1[1] = v2;
    operator delete(v2);
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<RoseSyntheticApertureFiltering::InternalRangeMeas>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x24924924924924ALL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<RoseSyntheticApertureFiltering::InternalRangeMeas>,RoseSyntheticApertureFiltering::InternalRangeMeas*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = 0;
    v7 = a2 + 40;
    do
    {
      v9 = *(v7 - 40);
      v10 = *(v7 - 24);
      *(a4 + 32) = *(v7 - 8);
      *a4 = v9;
      *(a4 + 16) = v10;
      cnmatrix::CNMatrix<3u,1u,double>::CNMatrix(a4 + 40, v7);
      v11 = v7 - 40;
      *(a4 + 104) = *(v7 + 64);
      a4 += 112;
      v6 -= 112;
      v7 += 112;
    }

    while (v11 + 112 != a3);
    if (v5 != a3)
    {
      v12 = v5 + 40;
      do
      {
        *(v5 + 40) = &unk_2873C4140;
        v5 += 112;
        v12 += 112;
      }

      while (v5 != a3);
    }
  }
}

void sub_2613F6AFC(_Unwind_Exception *a1)
{
  if (v2)
  {
    v3 = -v2;
    do
    {
      *(v1 - 72 + v3) = &unk_2873C4140;
      v3 -= 112;
    }

    while (v3);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__split_buffer<RoseSyntheticApertureFiltering::InternalRangeMeas>::~__split_buffer(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3 != v2)
  {
    v4 = v3 - 72;
    do
    {
      *(v3 - 72) = &unk_2873C4140;
      v3 -= 112;
      v4 -= 112;
    }

    while (v3 != v2);
    *(a1 + 16) = v3;
  }

  v5 = *a1;
  if (*a1)
  {
    operator delete(v5);
  }

  return a1;
}

double *cnmatrix::Transpose<double>(uint64_t a1, _DWORD *a2)
{
  if (a1 == a2)
  {
    cnmatrix::Transpose<double>();
  }

  result = cnmatrix::FastResize<double>(a2, *(a1 + 12), *(a1 + 8));
  v5 = a2[2];
  if (v5)
  {
    v6 = 0;
    v7 = a2[3];
    do
    {
      if (v7)
      {
        for (i = 0; i != v7; ++i)
        {
          v9 = cnmatrix::CNMatrixBase<double>::operator()(a1, i, v6);
          result = cnmatrix::CNMatrixBase<double>::operator()(a2, v6, i);
          *result = v9;
        }
      }

      ++v6;
    }

    while (v6 != v5);
  }

  return result;
}

double cnmatrix::CNMatrixBase<double>::operator()(uint64_t a1, int a2, int a3)
{
  v3 = *(a1 + 32);
  if (!v3)
  {
    cnmatrix::CNMatrixBase<double>::operator()();
  }

  v4 = a2 + *(a1 + 20) * a3;
  if ((v4 & 0x80000000) != 0)
  {
    cnmatrix::CNMatrixBase<double>::operator()();
  }

  if (v4 >= *(a1 + 16))
  {
    cnmatrix::CNMatrixBase<double>::operator()();
  }

  return *(v3 + 8 * v4);
}

uint64_t cnmatrix::CNMatrixBase<double>::operator()(uint64_t a1, int a2, int a3)
{
  v3 = *(a1 + 32);
  if (!v3)
  {
    cnmatrix::CNMatrixBase<double>::operator()();
  }

  v4 = a2 + *(a1 + 20) * a3;
  if ((v4 & 0x80000000) != 0)
  {
    cnmatrix::CNMatrixBase<double>::operator()();
  }

  if (v4 >= *(a1 + 16))
  {
    cnmatrix::CNMatrixBase<double>::operator()();
  }

  return v3 + 8 * v4;
}

double cnmatrix::CNMatrixBase<double>::operator()(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 32);
  if (!v2)
  {
    cnmatrix::CNMatrixBase<double>::operator()();
  }

  if ((a2 & 0x80000000) != 0)
  {
    cnmatrix::CNMatrixBase<double>::operator()();
  }

  if (*(a1 + 16) <= a2)
  {
    cnmatrix::CNMatrixBase<double>::operator()();
  }

  return *(v2 + 8 * a2);
}

void std::__tree<std::__value_type<unsigned int,unsigned int>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,unsigned int>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,unsigned int>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<unsigned int,unsigned int>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,unsigned int>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,unsigned int>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<unsigned int,unsigned int>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,unsigned int>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,unsigned int>>>::destroy(a1, a2[1]);

    operator delete(a2);
  }
}

uint64_t *std::__tree<std::__value_type<unsigned int,unsigned int>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,unsigned int>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,unsigned int>>>::__emplace_unique_key_args<unsigned int,std::pair<unsigned int const,unsigned int>>(uint64_t a1, unsigned int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = *(v2 + 28);
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

uint64_t *std::__tree<std::__value_type<unsigned int,unsigned int>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,unsigned int>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,unsigned int>>>::__insert_node_at(uint64_t **a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = a2;
  *a3 = a4;
  v5 = **a1;
  if (v5)
  {
    *a1 = v5;
    a4 = *a3;
  }

  result = std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(a1[1], a4);
  a1[2] = (a1[2] + 1);
  return result;
}

uint64_t *std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(uint64_t *result, uint64_t *a2)
{
  *(a2 + 24) = a2 == result;
  if (a2 != result)
  {
    do
    {
      v2 = a2[2];
      if (v2[3])
      {
        break;
      }

      v3 = v2[2];
      v4 = *v3;
      if (*v3 == v2)
      {
        v8 = v3[1];
        if (!v8 || (v9 = *(v8 + 24), v7 = (v8 + 24), v9 == 1))
        {
          if (*v2 == a2)
          {
            v11 = a2[2];
          }

          else
          {
            v11 = v2[1];
            v12 = *v11;
            v2[1] = *v11;
            v13 = v2;
            if (v12)
            {
              v12[2] = v2;
              v3 = v2[2];
              v13 = *v3;
            }

            v11[2] = v3;
            v3[v13 != v2] = v11;
            *v11 = v2;
            v2[2] = v11;
            v3 = v11[2];
            v4 = *v3;
          }

          *(v11 + 24) = 1;
          *(v3 + 24) = 0;
          v18 = *(v4 + 8);
          *v3 = v18;
          if (v18)
          {
            *(v18 + 16) = v3;
          }

          v19 = v3[2];
          *(v4 + 16) = v19;
          v19[*v19 != v3] = v4;
          *(v4 + 8) = v3;
          v3[2] = v4;
          return result;
        }
      }

      else
      {
        if (!v4 || (v6 = *(v4 + 24), v5 = (v4 + 24), v6 == 1))
        {
          v10 = *v2;
          if (*v2 == a2)
          {
            v14 = v10[1];
            *v2 = v14;
            if (v14)
            {
              *(v14 + 16) = v2;
              v3 = v2[2];
            }

            v10[2] = v3;
            v3[*v3 != v2] = v10;
            v10[1] = v2;
            v2[2] = v10;
            v3 = v10[2];
          }

          else
          {
            v10 = a2[2];
          }

          *(v10 + 24) = 1;
          *(v3 + 24) = 0;
          v15 = v3[1];
          v16 = *v15;
          v3[1] = *v15;
          if (v16)
          {
            *(v16 + 16) = v3;
          }

          v17 = v3[2];
          v15[2] = v17;
          v17[*v17 != v3] = v15;
          *v15 = v3;
          v3[2] = v15;
          return result;
        }

        v7 = v5;
      }

      *(v2 + 24) = 1;
      a2 = v3;
      *(v3 + 24) = v3 == result;
      *v7 = 1;
    }

    while (v3 != result);
  }

  return result;
}

uint64_t std::vector<RoseSyntheticApertureFiltering::InternalRangeMeas>::__emplace_back_slow_path<RoseSyntheticApertureFiltering::InternalRangeMeas const&>(uint64_t *a1, __int128 *a2)
{
  v2 = 0x6DB6DB6DB6DB6DB7 * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x249249249249249)
  {
    std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
  }

  if (0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 4);
  }

  if ((0x6DB6DB6DB6DB6DB7 * ((a1[2] - *a1) >> 4)) >= 0x124924924924924)
  {
    v6 = 0x249249249249249;
  }

  else
  {
    v6 = v3;
  }

  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<RoseSyntheticApertureFiltering::InternalRangeMeas>>(a1, v6);
  }

  v14 = 16 * ((a1[1] - *a1) >> 4);
  v7 = *a2;
  v8 = a2[1];
  *(v14 + 32) = *(a2 + 4);
  *v14 = v7;
  *(v14 + 16) = v8;
  cnmatrix::CNMatrix<3u,1u,double>::CNMatrix(112 * v2 + 40, a2 + 40);
  *(v14 + 104) = *(a2 + 26);
  v9 = 112 * v2 + 112;
  v10 = a1[1];
  v11 = 112 * v2 + *a1 - v10;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<RoseSyntheticApertureFiltering::InternalRangeMeas>,RoseSyntheticApertureFiltering::InternalRangeMeas*>(a1, *a1, v10, v14 + *a1 - v10);
  v12 = *a1;
  *a1 = v11;
  a1[1] = v9;
  a1[2] = 0;
  if (v12)
  {
    operator delete(v12);
  }

  return v9;
}

void sub_2613F7160(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<RoseSyntheticApertureFiltering::InternalRangeMeas>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::vector<RoseSyntheticApertureFiltering::InternalRangeMeas>::__init_with_size[abi:ne200100]<RoseSyntheticApertureFiltering::InternalRangeMeas*,RoseSyntheticApertureFiltering::InternalRangeMeas*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<RoseSyntheticApertureFiltering::InternalRangeMeas>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_2613F71DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<RoseSyntheticApertureFiltering::InternalRangeMeas>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<RoseSyntheticApertureFiltering::InternalRangeMeas>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x24924924924924ALL)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<RoseSyntheticApertureFiltering::InternalRangeMeas>>(a1, a2);
  }

  std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<RoseSyntheticApertureFiltering::InternalRangeMeas>,RoseSyntheticApertureFiltering::InternalRangeMeas*,RoseSyntheticApertureFiltering::InternalRangeMeas*,RoseSyntheticApertureFiltering::InternalRangeMeas*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 == a3)
  {
    return a4;
  }

  v5 = 0;
  v6 = a2 + 40;
  v7 = a4;
  do
  {
    v8 = *(v6 - 40);
    v9 = *(v6 - 24);
    *(v7 + 32) = *(v6 - 8);
    *v7 = v8;
    *(v7 + 16) = v9;
    cnmatrix::CNMatrix<3u,1u,double>::CNMatrix(v7 + 40, v6);
    v10 = v6 - 40;
    *(v7 + 104) = *(v6 + 64);
    v7 += 112;
    v5 -= 112;
    v6 += 112;
  }

  while (v10 + 112 != a3);
  return v7;
}

void sub_2613F72E4(_Unwind_Exception *a1)
{
  if (v2)
  {
    v3 = -v2;
    do
    {
      *(v1 - 72 + v3) = &unk_2873C4140;
      v3 -= 112;
    }

    while (v3);
  }

  _Unwind_Resume(a1);
}

void std::vector<RoseSyntheticApertureFiltering::InternalRangeMeas>::__vdeallocate(char **a1)
{
  v2 = *a1;
  if (v2)
  {
    v3 = a1[1];
    if (v3 != v2)
    {
      v4 = v3 - 72;
      do
      {
        *(v3 - 9) = &unk_2873C4140;
        v4 -= 112;
        v3 -= 112;
      }

      while (v3 != v2);
    }

    a1[1] = v2;
    operator delete(v2);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

uint64_t std::vector<RoseSyntheticApertureFiltering::InternalRangeMeas>::__emplace_back_slow_path<RoseSyntheticApertureFiltering::InternalRangeMeas&>(uint64_t *a1, __int128 *a2)
{
  v2 = 0x6DB6DB6DB6DB6DB7 * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x249249249249249)
  {
    std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
  }

  if (0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 4);
  }

  if ((0x6DB6DB6DB6DB6DB7 * ((a1[2] - *a1) >> 4)) >= 0x124924924924924)
  {
    v6 = 0x249249249249249;
  }

  else
  {
    v6 = v3;
  }

  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<RoseSyntheticApertureFiltering::InternalRangeMeas>>(a1, v6);
  }

  v14 = 16 * ((a1[1] - *a1) >> 4);
  v7 = *a2;
  v8 = a2[1];
  *(v14 + 32) = *(a2 + 4);
  *v14 = v7;
  *(v14 + 16) = v8;
  cnmatrix::CNMatrix<3u,1u,double>::CNMatrix(112 * v2 + 40, a2 + 40);
  *(v14 + 104) = *(a2 + 26);
  v9 = 112 * v2 + 112;
  v10 = a1[1];
  v11 = 112 * v2 + *a1 - v10;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<RoseSyntheticApertureFiltering::InternalRangeMeas>,RoseSyntheticApertureFiltering::InternalRangeMeas*>(a1, *a1, v10, v14 + *a1 - v10);
  v12 = *a1;
  *a1 = v11;
  a1[1] = v9;
  a1[2] = 0;
  if (v12)
  {
    operator delete(v12);
  }

  return v9;
}

void sub_2613F74CC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<RoseSyntheticApertureFiltering::InternalRangeMeas>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::vector<RoseSyntheticApertureFiltering::InternalRangeMeas>::__assign_with_size[abi:ne200100]<RoseSyntheticApertureFiltering::InternalRangeMeas*,RoseSyntheticApertureFiltering::InternalRangeMeas*>(uint64_t a1, __int128 *a2, uint64_t a3, unint64_t a4)
{
  v6 = a2;
  v8 = *a1;
  if (0x6DB6DB6DB6DB6DB7 * ((*(a1 + 16) - *a1) >> 4) < a4)
  {
    std::vector<RoseSyntheticApertureFiltering::InternalRangeMeas>::__vdeallocate(a1);
    if (a4 <= 0x249249249249249)
    {
      v9 = 0xDB6DB6DB6DB6DB6ELL * ((*(a1 + 16) - *a1) >> 4);
      if (v9 <= a4)
      {
        v9 = a4;
      }

      if ((0x6DB6DB6DB6DB6DB7 * ((*(a1 + 16) - *a1) >> 4)) >= 0x124924924924924)
      {
        v10 = 0x249249249249249;
      }

      else
      {
        v10 = v9;
      }

      std::vector<RoseSyntheticApertureFiltering::InternalRangeMeas>::__vallocate[abi:ne200100](a1, v10);
    }

    std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
  }

  v11 = *(a1 + 8);
  if (0x6DB6DB6DB6DB6DB7 * ((v11 - v8) >> 4) >= a4)
  {
    if (a2 != a3)
    {
      do
      {
        v15 = *v6;
        v16 = v6[1];
        *(v8 + 4) = *(v6 + 4);
        *v8 = v15;
        *(v8 + 1) = v16;
        cnmatrix::CNMatrixBase<double>::operator=((v8 + 40), v6 + 40);
        *(v8 + 26) = *(v6 + 26);
        v8 += 112;
        v6 += 7;
      }

      while (v6 != a3);
      v11 = *(a1 + 8);
    }

    if (v11 != v8)
    {
      v17 = v11 - 72;
      do
      {
        *(v11 - 72) = &unk_2873C4140;
        v17 -= 112;
        v11 -= 112;
      }

      while (v11 != v8);
    }

    *(a1 + 8) = v8;
  }

  else
  {
    v12 = a2 + v11 - v8;
    if (v11 != v8)
    {
      do
      {
        v13 = *v6;
        v14 = v6[1];
        *(v8 + 4) = *(v6 + 4);
        *v8 = v13;
        *(v8 + 1) = v14;
        cnmatrix::CNMatrixBase<double>::operator=((v8 + 40), v6 + 40);
        *(v8 + 26) = *(v6 + 26);
        v6 += 7;
        v8 += 112;
      }

      while (v6 != v12);
      v11 = *(a1 + 8);
    }

    *(a1 + 8) = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<RoseSyntheticApertureFiltering::InternalRangeMeas>,RoseSyntheticApertureFiltering::InternalRangeMeas*,RoseSyntheticApertureFiltering::InternalRangeMeas*,RoseSyntheticApertureFiltering::InternalRangeMeas*>(a1, v12, a3, v11);
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

_OWORD *std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<RoseSyntheticApertureFiltering::InternalAoAMeas *,RoseSyntheticApertureFiltering::InternalAoAMeas *,RoseSyntheticApertureFiltering::InternalAoAMeas *>(uint64_t a1, _OWORD *a2, _OWORD *a3, _OWORD *a4)
{
  v5 = a2;
  if (a2 == a3)
  {
    return a2;
  }

  v6 = a3;
  do
  {
    v7 = v5[1];
    *a4 = *v5;
    a4[1] = v7;
    cnmatrix::CNMatrixBase<double>::operator=((a4 + 2), (v5 + 2));
    cnmatrix::CNMatrixBase<double>::operator=((a4 + 6), (v5 + 6));
    a4 += 13;
    v5 += 13;
  }

  while (v5 != v6);
  return v6;
}

uint64_t std::vector<RoseSyntheticApertureFiltering::InternalRangeMeas>::__emplace_back_slow_path<RoseSyntheticApertureFiltering::InternalRangeMeas>(uint64_t *a1, __int128 *a2)
{
  v2 = 0x6DB6DB6DB6DB6DB7 * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x249249249249249)
  {
    std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
  }

  if (0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 4);
  }

  if ((0x6DB6DB6DB6DB6DB7 * ((a1[2] - *a1) >> 4)) >= 0x124924924924924)
  {
    v6 = 0x249249249249249;
  }

  else
  {
    v6 = v3;
  }

  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<RoseSyntheticApertureFiltering::InternalRangeMeas>>(a1, v6);
  }

  v14 = 16 * ((a1[1] - *a1) >> 4);
  v7 = *a2;
  v8 = a2[1];
  *(v14 + 32) = *(a2 + 4);
  *v14 = v7;
  *(v14 + 16) = v8;
  cnmatrix::CNMatrix<3u,1u,double>::CNMatrix(112 * v2 + 40, a2 + 40);
  *(v14 + 104) = *(a2 + 26);
  v9 = 112 * v2 + 112;
  v10 = a1[1];
  v11 = 112 * v2 + *a1 - v10;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<RoseSyntheticApertureFiltering::InternalRangeMeas>,RoseSyntheticApertureFiltering::InternalRangeMeas*>(a1, *a1, v10, v14 + *a1 - v10);
  v12 = *a1;
  *a1 = v11;
  a1[1] = v9;
  a1[2] = 0;
  if (v12)
  {
    operator delete(v12);
  }

  return v9;
}

void sub_2613F78CC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<RoseSyntheticApertureFiltering::InternalRangeMeas>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

double cnmatrix::CNMatrixBase<double>::operator()<int,int>(uint64_t a1, int a2, int a3)
{
  v3 = *(a1 + 32);
  if (!v3)
  {
    cnmatrix::CNMatrixBase<double>::operator()<int,int>();
  }

  v4 = a2 + *(a1 + 20) * a3;
  if ((v4 & 0x80000000) != 0)
  {
    cnmatrix::CNMatrixBase<double>::operator()<int,int>();
  }

  if (v4 >= *(a1 + 16))
  {
    cnmatrix::CNMatrixBase<double>::operator()<int,int>();
  }

  return *(v3 + 8 * v4);
}

void std::vector<RoseSyntheticApertureFiltering::InternalExpectedRangeMeas>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v3 = v1[1];
    if (v3 != v2)
    {
      v4 = v3 - 128;
      do
      {
        *(v3 - 8) = &unk_2873C4140;
        *(v3 - 16) = &unk_2873C4140;
        v4 -= 136;
        v3 -= 136;
      }

      while (v3 != v2);
    }

    v1[1] = v2;
    operator delete(v2);
  }
}

void std::vector<RoseSyntheticApertureFiltering::InternalExpectedAoAMeas>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v3 = v1[1];
    if (v3 != v2)
    {
      v4 = v3 - 176;
      do
      {
        *(v3 - 11) = &unk_2873C4140;
        *(v3 - 22) = &unk_2873C4140;
        v4 -= 192;
        v3 -= 192;
      }

      while (v3 != v2);
    }

    v1[1] = v2;
    operator delete(v2);
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<RoseSyntheticApertureFiltering::InternalExpectedRangeMeas>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x1E1E1E1E1E1E1E2)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<RoseSyntheticApertureFiltering::InternalExpectedRangeMeas>,RoseSyntheticApertureFiltering::InternalExpectedRangeMeas*>(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v8 = 0;
    v9 = a2;
    do
    {
      std::allocator<RoseSyntheticApertureFiltering::InternalExpectedRangeMeas>::construct[abi:ne200100]<RoseSyntheticApertureFiltering::InternalExpectedRangeMeas,RoseSyntheticApertureFiltering::InternalExpectedRangeMeas const&>(a1, (a4 + v8), v9);
      v9 += 17;
      v8 += 136;
    }

    while (v9 != a3);
    if (v6 != a3)
    {
      v10 = v6 + 9;
      do
      {
        v6[9] = &unk_2873C4140;
        v6[1] = &unk_2873C4140;
        v6 += 17;
        v10 += 17;
      }

      while (v6 != a3);
    }
  }
}

void sub_2613F7B2C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<RoseSyntheticApertureFiltering::InternalExpectedRangeMeas>,RoseSyntheticApertureFiltering::InternalExpectedRangeMeas*>();
  }

  _Unwind_Resume(exception_object);
}

double std::allocator<RoseSyntheticApertureFiltering::InternalExpectedRangeMeas>::construct[abi:ne200100]<RoseSyntheticApertureFiltering::InternalExpectedRangeMeas,RoseSyntheticApertureFiltering::InternalExpectedRangeMeas const&>(uint64_t a1, void *a2, void *a3)
{
  v3 = (a3 + 9);
  *a2 = *a3;
  v4 = (a2 + 9);
  cnmatrix::CNMatrix<1u,3u,double>::CNMatrix((a2 + 1), (a3 + 1));
  *&result = cnmatrix::CNMatrix<3u,1u,double>::CNMatrix(v4, v3).n128_u64[0];
  return result;
}

__n128 cnmatrix::CNMatrix<1u,3u,double>::CNMatrix(uint64_t a1, uint64_t a2)
{
  result.n128_u64[0] = 0x300000001;
  *(a1 + 24) = 0x300000001;
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_2873C4288;
  if (a1 == a2)
  {
    v16 = "this != &(A)";
    v17 = 603;
LABEL_21:
    v18 = "cnmatrix.h";
    v19 = "CNMatrix";
LABEL_22:
    __assert_rtn(v19, v18, v17, v16);
  }

  v3 = *(a2 + 8);
  if (v3 > 1)
  {
    v16 = "this->max_num_rows_ >= num_rows";
    v17 = 422;
LABEL_18:
    v18 = "cnmatrixbase.h";
    v19 = "SetMatrixSize";
    goto LABEL_22;
  }

  v4 = *(a2 + 12);
  if (v4 >= 4)
  {
    v16 = "this->max_num_cols_ >= num_cols";
    v17 = 423;
    goto LABEL_18;
  }

  *(a1 + 8) = v3;
  *(a1 + 12) = v4;
  v5 = v4 * v3;
  *(a1 + 16) = v5;
  *(a1 + 20) = v3;
  v6 = (a1 + 40);
  *(a1 + 32) = a1 + 40;
  if (*(a2 + 8) > 1u)
  {
    v16 = "this->max_num_rows_ >= A.num_rows_";
    v17 = 616;
    goto LABEL_21;
  }

  if (*(a2 + 12) > 3u)
  {
    v16 = "this->max_num_cols_ >= A.num_cols_";
    v17 = 617;
    goto LABEL_21;
  }

  v7 = *(a2 + 16);
  if (v7 > 3)
  {
    v10 = (v7 - 2);
    v11 = *(a2 + 32);
    v12 = (v6 + 8 * v10);
    v13 = (v7 - 1) >> 1;
    v14 = v11;
    do
    {
      v15 = *v14++;
      *v6++ = v15;
      --v13;
    }

    while (v13);
    result = *(v11 + 8 * v10);
    *v12 = result;
  }

  else if (v5)
  {
    v8 = *(a2 + 32);
    do
    {
      v9 = *v8++;
      result.n128_u64[0] = v9;
      *v6 = v9;
      v6 = (v6 + 8);
      --v5;
    }

    while (v5);
  }

  return result;
}

uint64_t std::__split_buffer<RoseSyntheticApertureFiltering::InternalExpectedRangeMeas>::~__split_buffer(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3 != v2)
  {
    v4 = v3 - 128;
    do
    {
      *(v3 - 64) = &unk_2873C4140;
      *(v3 - 128) = &unk_2873C4140;
      v3 -= 136;
      v4 -= 136;
    }

    while (v3 != v2);
    *(a1 + 16) = v3;
  }

  v5 = *a1;
  if (*a1)
  {
    operator delete(v5);
  }

  return a1;
}

cnprint::CNPrinter *cnmatrix::Inv<double>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3)
  {
    cnmatrix::Inv<double>();
  }

  if (a1 == a4)
  {
    cnmatrix::Inv<double>();
  }

  if (a3 == a4)
  {
    cnmatrix::Inv<double>();
  }

  v7 = *(a1 + 8);
  if (v7 != *(a1 + 12))
  {
    cnmatrix::Inv<double>();
  }

  if (*(a2 + 28) * *(a2 + 24) < v7)
  {
    cnmatrix::Inv<double>();
  }

  if (*(a3 + 28) * *(a3 + 24) < 4 * v7)
  {
    cnmatrix::Inv<double>();
  }

  if (*(a4 + 24) < v7)
  {
    cnmatrix::Inv<double>();
  }

  if (*(a4 + 28) < v7)
  {
    cnmatrix::Inv<double>();
  }

  cnmatrix::CNMatrixBase<double>::operator=(a4, a1);
  v8 = *(a4 + 8);
  v9 = *(a4 + 12);
  v10 = *(a4 + 32);
  v11 = *(a4 + 20);
  v12 = *(a2 + 32);
  if (v8 < 1)
  {
    cnmatrix::Inv<double>();
  }

  v13 = 4 * v8;
  v14 = operator new[](4 * v8, MEMORY[0x277D826F0]);
  if (!v14)
  {
    cnmatrix::Inv<double>();
  }

  v15 = v14;
  dgetrf_NEWLAPACK();
  memcpy(v12, v15, v13);
  MEMORY[0x266701580](v15, 0x1000C8052888210);
  v16 = *(a3 + 32);
  v17 = *(a3 + 28) * *(a3 + 24);
  if (v9 >= 1 && (v18 = 4 * v9, (v19 = operator new[](v18, MEMORY[0x277D826F0])) != 0))
  {
    v20 = v19;
    memcpy(v19, v12, v18);
    dgetri_NEWLAPACK();
    result = MEMORY[0x266701580](v20, 0x1000C8052888210);
    v22 = 0;
    v23 = 0;
  }

  else
  {
    result = cnprint::CNPrinter::Print();
    v22 = 1;
    v23 = 1;
  }

  if (v17 < **(a3 + 32))
  {
    result = cnprint::CNPrinter::GetLogLevel(result);
    if (result <= 1)
    {
      result = cnprint::CNPrinter::Print();
    }
  }

  if (v22)
  {
    cnmatrix::Inv<double>();
  }

  if (v23)
  {
    return cnmatrix::CNMatrixBase<double>::WriteValue(a4, INFINITY);
  }

  return result;
}

void cnmatrix::CNMatrix<3u,1u,int>::TransposeDataFootprint(uint64_t a1, char *a2)
{
  v2 = *(a1 + 8);
  if (v2 >= 2)
  {
    v4 = *(a1 + 12);
    if (v4 >= 2)
    {
      if (!a2)
      {
        cnmatrix::CNMatrix<3u,1u,double>::TransposeDataFootprint();
      }

      v6 = v4 + v2 - *(a1 + 20);
      if (v6 <= 0)
      {
        cnmatrix::CNMatrix<3u,1u,double>::TransposeDataFootprint();
      }

      bzero(a2, *(a1 + 16));
      v7 = *(a1 + 16);
      if (v7 >= 3)
      {
        v8 = (v7 - 1);
        v9 = *(a1 + 32);
        v10 = 1;
        do
        {
          v11 = &a2[v10];
          if ((a2[v10] & 1) == 0)
          {
            v12 = *(v9 + 4 * v10);
            v13 = v10;
            do
            {
              v13 = v13 * v6 % v8;
              v14 = *(v9 + 4 * v13);
              *(v9 + 4 * v13) = v12;
              *v11 = 1;
              v11 = &a2[v13];
              v12 = v14;
            }

            while (!*v11);
          }

          ++v10;
        }

        while (v10 != v8);
      }
    }
  }
}

void cnmatrix::CNMatrix<12u,1u,double>::TransposeDataFootprint(uint64_t a1)
{
  v3 = *MEMORY[0x277D85DE8];
  cnmatrix::CNMatrix<3u,1u,double>::TransposeDataFootprint(a1, v2);
  v1 = *MEMORY[0x277D85DE8];
}

void std::vector<cnmatrix::CNMatrix<3u,1u,double>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      v6 = v4 - 64;
      v7 = v4 - 64;
      v8 = v4 - 64;
      do
      {
        v9 = *v8;
        v8 -= 64;
        (*v9)(v7);
        v6 -= 64;
        v10 = v7 == v2;
        v7 = v8;
      }

      while (!v10);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t std::vector<cnmatrix::CNMatrix<3u,1u,double>>::__emplace_back_slow_path<cnmatrix::CNMatrix<3u,1u,double> const&>(uint64_t *a1, uint64_t a2)
{
  v2 = (a1[1] - *a1) >> 6;
  v3 = v2 + 1;
  if ((v2 + 1) >> 58)
  {
    std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
  }

  v6 = a1[2] - *a1;
  if (v6 >> 5 > v3)
  {
    v3 = v6 >> 5;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFC0)
  {
    v7 = 0x3FFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v17 = a1;
  if (v7)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<cnmatrix::CNMatrix<3u,1u,double>>>(a1, v7);
  }

  v14 = 0;
  v15 = v2 << 6;
  cnmatrix::CNMatrix<3u,1u,double>::CNMatrix(v2 << 6, a2);
  v16 = ((v2 << 6) + 64);
  v8 = a1[1];
  v9 = (v2 << 6) + *a1 - v8;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<cnmatrix::CNMatrix<3u,1u,double>>,cnmatrix::CNMatrix<3u,1u,double>*>(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = a1[2];
  v13 = v16;
  *(a1 + 1) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  std::__split_buffer<cnmatrix::CNMatrix<3u,1u,double>>::~__split_buffer(&v14);
  return v13;
}

void sub_2613F845C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<cnmatrix::CNMatrix<3u,1u,double>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<cnmatrix::CNMatrix<3u,1u,double>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 58))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<cnmatrix::CNMatrix<3u,1u,double>>,cnmatrix::CNMatrix<3u,1u,double>*>(uint64_t a1, uint64_t a2, void (***a3)(void, __n128), uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    v8 = a2;
    do
    {
      v9 = cnmatrix::CNMatrix<3u,1u,double>::CNMatrix(a4 + v7, v8);
      v8 += 64;
      v7 += 64;
    }

    while (v8 != a3);
    if (v6 != a3)
    {
      v10 = v6;
      v11 = v6;
      do
      {
        v12 = *v11;
        v11 += 8;
        (*v12)(v6, v9);
        v10 += 8;
        v6 = v11;
      }

      while (v11 != a3);
    }
  }
}

void sub_2613F8564(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<cnmatrix::CNMatrix<3u,1u,double>>,cnmatrix::CNMatrix<3u,1u,double>*>(v1 + v2, v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__split_buffer<cnmatrix::CNMatrix<3u,1u,double>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    v4 = *(i - 64);
    *(a1 + 16) = i - 64;
    (*v4)();
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::vector<RoseSyntheticApertureFiltering::FilterInitializationResult>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<RoseSyntheticApertureFiltering::FilterInitializationResult>::__base_destruct_at_end[abi:ne200100](v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<RoseSyntheticApertureFiltering::FilterInitializationResult>::__construct_one_at_end[abi:ne200100]<RoseSyntheticApertureFiltering::FilterInitializationResult>(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  *v4 = *a2;
  cnmatrix::CNMatrix<3u,1u,double>::CNMatrix(v4 + 8, a2 + 8);
  cnmatrix::CNMatrix<3u,1u,double>::CNMatrix(v4 + 72, a2 + 72);
  cnmatrix::CNMatrix<3u,3u,double>::CNMatrix(v4 + 136, a2 + 136);
  cnmatrix::CNMatrix<3u,3u,double>::CNMatrix(v4 + 248, a2 + 248);
  v5 = *(a2 + 360);
  *(v4 + 368) = *(a2 + 368);
  *(v4 + 360) = v5;
  *(a1 + 8) = v4 + 376;
}

void sub_2613F86D0(_Unwind_Exception *a1)
{
  *v4 = &unk_2873C4140;
  *v3 = &unk_2873C4140;
  *v2 = &unk_2873C4140;
  *(v1 + 8) = v5;
  _Unwind_Resume(a1);
}

uint64_t std::vector<RoseSyntheticApertureFiltering::FilterInitializationResult>::__emplace_back_slow_path<RoseSyntheticApertureFiltering::FilterInitializationResult>(uint64_t a1, uint64_t a2)
{
  v2 = 0x51B3BEA3677D46CFLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0xAE4C415C9882B9)
  {
    std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
  }

  if (0xA3677D46CEFA8D9ELL * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0xA3677D46CEFA8D9ELL * ((*(a1 + 16) - *a1) >> 3);
  }

  if ((0x51B3BEA3677D46CFLL * ((*(a1 + 16) - *a1) >> 3)) >= 0x572620AE4C415CLL)
  {
    v6 = 0xAE4C415C9882B9;
  }

  else
  {
    v6 = v3;
  }

  v18 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<RoseSyntheticApertureFiltering::FilterInitializationResult>>(a1, v6);
  }

  v15 = 0;
  v16 = 376 * v2;
  v17 = (376 * v2);
  v7 = 376 * v2;
  *v7 = *a2;
  cnmatrix::CNMatrix<3u,1u,double>::CNMatrix(376 * v2 + 8, a2 + 8);
  cnmatrix::CNMatrix<3u,1u,double>::CNMatrix(376 * v2 + 72, a2 + 72);
  cnmatrix::CNMatrix<3u,3u,double>::CNMatrix(376 * v2 + 136, a2 + 136);
  cnmatrix::CNMatrix<3u,3u,double>::CNMatrix(376 * v2 + 248, a2 + 248);
  v8 = *(a2 + 360);
  *(v7 + 368) = *(a2 + 368);
  *(v7 + 360) = v8;
  *&v17 = v17 + 376;
  v9 = *(a1 + 8);
  v10 = v16 + *a1 - v9;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<RoseSyntheticApertureFiltering::FilterInitializationResult>,RoseSyntheticApertureFiltering::FilterInitializationResult*>(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = *(a1 + 16);
  v14 = v17;
  *(a1 + 8) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  std::__split_buffer<RoseSyntheticApertureFiltering::FilterInitializationResult>::~__split_buffer(&v15);
  return v14;
}

void sub_2613F88BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  *v6 = &unk_2873C4140;
  *v5 = &unk_2873C4140;
  *v4 = &unk_2873C4140;
  std::__split_buffer<RoseSyntheticApertureFiltering::FilterInitializationResult>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<RoseSyntheticApertureFiltering::FilterInitializationResult>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAE4C415C9882BALL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<RoseSyntheticApertureFiltering::FilterInitializationResult>,RoseSyntheticApertureFiltering::FilterInitializationResult*>(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v12 = a4;
  v13 = a4;
  v10[0] = a1;
  v10[1] = &v12;
  v10[2] = &v13;
  v11 = 0;
  if (a2 == a3)
  {
    v11 = 1;
  }

  else
  {
    v5 = a2;
    v7 = a2;
    do
    {
      std::allocator_traits<std::allocator<RoseSyntheticApertureFiltering::FilterInitializationResult>>::construct[abi:ne200100]<RoseSyntheticApertureFiltering::FilterInitializationResult,RoseSyntheticApertureFiltering::FilterInitializationResult const&,0>(a1, a4, v7);
      v7 += 376;
      a4 = v13 + 376;
      v13 += 376;
    }

    while (v7 != a3);
    v11 = 1;
    if (v5 != a3)
    {
      v8 = v5 + 31;
      do
      {
        v5[31] = &unk_2873C4140;
        v5[17] = &unk_2873C4140;
        v5[9] = &unk_2873C4140;
        v5[1] = &unk_2873C4140;
        v5 += 47;
        v8 += 47;
      }

      while (v5 != a3);
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<RoseSyntheticApertureFiltering::FilterInitializationResult>,RoseSyntheticApertureFiltering::FilterInitializationResult*>>::~__exception_guard_exceptions[abi:ne200100](v10);
}

void std::allocator_traits<std::allocator<RoseSyntheticApertureFiltering::FilterInitializationResult>>::construct[abi:ne200100]<RoseSyntheticApertureFiltering::FilterInitializationResult,RoseSyntheticApertureFiltering::FilterInitializationResult const&,0>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a3 + 72;
  *a2 = *a3;
  v6 = a2 + 72;
  cnmatrix::CNMatrix<3u,1u,double>::CNMatrix(a2 + 8, a3 + 8);
  cnmatrix::CNMatrix<3u,1u,double>::CNMatrix(v6, v5);
  cnmatrix::CNMatrix<3u,3u,double>::CNMatrix(a2 + 136, a3 + 136);
  cnmatrix::CNMatrix<3u,3u,double>::CNMatrix(a2 + 248, a3 + 248);
  v7 = *(a3 + 360);
  *(a2 + 368) = *(a3 + 368);
  *(a2 + 360) = v7;
}

void sub_2613F8B70(_Unwind_Exception *a1)
{
  *v3 = &unk_2873C4140;
  *v2 = &unk_2873C4140;
  *v1 = &unk_2873C4140;
  _Unwind_Resume(a1);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<RoseSyntheticApertureFiltering::FilterInitializationResult>,RoseSyntheticApertureFiltering::FilterInitializationResult*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<RoseSyntheticApertureFiltering::FilterInitializationResult>,RoseSyntheticApertureFiltering::FilterInitializationResult*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

uint64_t std::_AllocatorDestroyRangeReverse<std::allocator<RoseSyntheticApertureFiltering::FilterInitializationResult>,RoseSyntheticApertureFiltering::FilterInitializationResult*>::operator()[abi:ne200100](uint64_t result)
{
  v1 = **(result + 16);
  v2 = **(result + 8);
  if (v1 != v2)
  {
    v3 = v1 - 46;
    v4 = v3;
    do
    {
      v4[30] = &unk_2873C4140;
      v4[16] = &unk_2873C4140;
      v4[8] = &unk_2873C4140;
      *v4 = &unk_2873C4140;
      v5 = v4 - 1;
      v4 -= 47;
      v3 -= 47;
    }

    while (v5 != v2);
  }

  return result;
}

uint64_t std::__split_buffer<RoseSyntheticApertureFiltering::FilterInitializationResult>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<RoseSyntheticApertureFiltering::FilterInitializationResult>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::__split_buffer<RoseSyntheticApertureFiltering::FilterInitializationResult>::__destruct_at_end[abi:ne200100](uint64_t result, void *a2)
{
  v2 = *(result + 16);
  if (v2 != a2)
  {
    v3 = v2 - 46;
    v4 = v3;
    do
    {
      v4[30] = &unk_2873C4140;
      v4[16] = &unk_2873C4140;
      v4[8] = &unk_2873C4140;
      *v4 = &unk_2873C4140;
      v5 = v4 - 47;
      v6 = v4 - 1;
      v3 -= 47;
      v4 -= 47;
    }

    while (v6 != a2);
    *(result + 16) = v5 + 46;
  }

  return result;
}

uint64_t std::vector<RoseSyntheticApertureFiltering::FilterInitializationResult>::__base_destruct_at_end[abi:ne200100](uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  if (v2 != a2)
  {
    v3 = v2 - 128;
    do
    {
      *(v2 - 128) = &unk_2873C4140;
      *(v2 - 240) = &unk_2873C4140;
      *(v2 - 304) = &unk_2873C4140;
      *(v2 - 368) = &unk_2873C4140;
      v3 -= 376;
      v2 -= 376;
    }

    while (v2 != a2);
  }

  *(result + 8) = a2;
  return result;
}

uint64_t std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<RoseSyntheticApertureFiltering::FilterInitializationResult *,RoseSyntheticApertureFiltering::FilterInitializationResult *,RoseSyntheticApertureFiltering::FilterInitializationResult *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2;
  if (a2 == a3)
  {
    return a2;
  }

  v6 = a3;
  do
  {
    *a4 = *v5;
    cnmatrix::CNMatrixBase<double>::operator=(a4 + 8, v5 + 8);
    cnmatrix::CNMatrixBase<double>::operator=(a4 + 72, v5 + 72);
    cnmatrix::CNMatrixBase<double>::operator=(a4 + 136, v5 + 136);
    cnmatrix::CNMatrixBase<double>::operator=(a4 + 248, v5 + 248);
    v7 = *(v5 + 368);
    *(a4 + 360) = *(v5 + 360);
    *(a4 + 368) = v7;
    a4 += 376;
    v5 += 376;
  }

  while (v5 != v6);
  return v6;
}

double std::__introsort<std::_ClassicAlgPolicy,RoseSyntheticApertureFiltering::PRRoseSyntheticApertureBatchFilter::batchSolver(void)::$_2 &,RoseSyntheticApertureFiltering::FilterInitializationResult *,false>(uint64_t a1, uint64_t a2, uint64_t a3, char a4, __n128 a5)
{
LABEL_1:
  v8 = a2;
  v124 = (a2 - 392);
  v125 = (a2 - 376);
  v123 = (a2 - 768);
  v9 = a1;
  while (1)
  {
    a1 = v9;
    v10 = &v8[-v9];
    v11 = 0x51B3BEA3677D46CFLL * (&v8[-v9] >> 3);
    v12 = v11 - 2;
    if (v11 <= 2)
    {
      if (v11 < 2)
      {
        return a5.n128_f64[0];
      }

      v8 = a2;
      if (v11 == 2)
      {
        a5.n128_u64[0] = *(a2 - 16);
        if (a5.n128_f64[0] >= *(a1 + 360))
        {
          return a5.n128_f64[0];
        }

LABEL_110:
        v70 = a1;
LABEL_111:
        v71 = (a2 - 376);
LABEL_112:
        std::iter_swap[abi:ne200100]<RoseSyntheticApertureFiltering::FilterInitializationResult *,RoseSyntheticApertureFiltering::FilterInitializationResult *>(v70, v71);
        return a5.n128_f64[0];
      }

      goto LABEL_9;
    }

    if (v11 == 3)
    {
      break;
    }

    if (v11 == 4)
    {
      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,RoseSyntheticApertureFiltering::PRRoseSyntheticApertureBatchFilter::batchSolver(void)::$_2 &,RoseSyntheticApertureFiltering::FilterInitializationResult *,0>(a1, a1 + 376, a1 + 752, v125);
      return a5.n128_f64[0];
    }

    if (v11 == 5)
    {
      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,RoseSyntheticApertureFiltering::PRRoseSyntheticApertureBatchFilter::batchSolver(void)::$_2 &,RoseSyntheticApertureFiltering::FilterInitializationResult *,0>(a1, a1 + 376, a1 + 752, a1 + 1128);
      a5.n128_u64[0] = *(v8 - 2);
      if (a5.n128_f64[0] >= *(a1 + 1488))
      {
        return a5.n128_f64[0];
      }

      std::iter_swap[abi:ne200100]<RoseSyntheticApertureFiltering::FilterInitializationResult *,RoseSyntheticApertureFiltering::FilterInitializationResult *>((a1 + 1128), v125);
      a5.n128_u64[0] = *(a1 + 1488);
      if (a5.n128_f64[0] >= *(a1 + 1112))
      {
        return a5.n128_f64[0];
      }

      std::iter_swap[abi:ne200100]<RoseSyntheticApertureFiltering::FilterInitializationResult *,RoseSyntheticApertureFiltering::FilterInitializationResult *>((a1 + 752), (a1 + 1128));
      a5.n128_u64[0] = *(a1 + 1112);
      if (a5.n128_f64[0] >= *(a1 + 736))
      {
        return a5.n128_f64[0];
      }

      v67 = (a1 + 376);
      v68 = (a1 + 752);
      goto LABEL_163;
    }

LABEL_9:
    if (v10 <= 9023)
    {
      if (a4)
      {
        if (a1 != v8)
        {
          v72 = (a1 + 376);
          if (a1 + 376 != a2)
          {
            v73 = 0;
            v74 = a1;
            do
            {
              v75 = v72;
              a5.n128_u64[0] = *(v74 + 92);
              if (a5.n128_f64[0] < *(v74 + 45))
              {
                v76 = *v72;
                v135 = *v75;
                cnmatrix::CNMatrix<3u,1u,double>::CNMatrix(v136, (v74 + 384));
                cnmatrix::CNMatrix<3u,1u,double>::CNMatrix(v137, (v74 + 448));
                cnmatrix::CNMatrix<3u,3u,double>::CNMatrix(v138, (v74 + 512));
                cnmatrix::CNMatrix<3u,3u,double>::CNMatrix(v139, (v74 + 624));
                v140 = *(v74 + 92);
                v141 = *(v74 + 186);
                v77 = v73;
                while (1)
                {
                  v78 = a1 + v77;
                  *(a1 + v77 + 376) = *(a1 + v77);
                  cnmatrix::CNMatrixBase<double>::operator=(a1 + v77 + 384, a1 + v77 + 8);
                  cnmatrix::CNMatrixBase<double>::operator=(v78 + 448, v78 + 72);
                  cnmatrix::CNMatrixBase<double>::operator=(v78 + 512, v78 + 136);
                  cnmatrix::CNMatrixBase<double>::operator=(v78 + 624, v78 + 248);
                  *(v78 + 736) = *(v78 + 360);
                  *(v78 + 744) = *(v78 + 368);
                  if (!v77)
                  {
                    break;
                  }

                  v77 -= 376;
                  if (v140 >= *(v78 - 16))
                  {
                    v79 = (a1 + v77 + 376);
                    goto LABEL_124;
                  }
                }

                v79 = a1;
LABEL_124:
                *v79 = v135;
                cnmatrix::CNMatrixBase<double>::operator=(v78 + 8, v136);
                cnmatrix::CNMatrixBase<double>::operator=(v78 + 72, v137);
                cnmatrix::CNMatrixBase<double>::operator=(v78 + 136, v138);
                a5.n128_u64[0] = cnmatrix::CNMatrixBase<double>::operator=(v78 + 248, v139).n128_u64[0];
                v80 = v141;
                *(v78 + 360) = v140;
                *(v78 + 368) = v80;
              }

              v72 = v75 + 376;
              v73 += 376;
              v74 = v75;
            }

            while (v75 + 376 != a2);
          }
        }
      }

      else if (a1 != v8)
      {
        v115 = (a1 + 376);
        if (a1 + 376 != a2)
        {
          v116 = a1 - 16;
          do
          {
            v117 = v115;
            a5.n128_u64[0] = *(a1 + 736);
            if (a5.n128_f64[0] < *(a1 + 360))
            {
              v118 = *v115;
              v135 = *v117;
              cnmatrix::CNMatrix<3u,1u,double>::CNMatrix(v136, a1 + 384);
              cnmatrix::CNMatrix<3u,1u,double>::CNMatrix(v137, a1 + 448);
              cnmatrix::CNMatrix<3u,3u,double>::CNMatrix(v138, a1 + 512);
              cnmatrix::CNMatrix<3u,3u,double>::CNMatrix(v139, a1 + 624);
              v140 = *(a1 + 736);
              v141 = *(a1 + 744);
              v119 = v116;
              do
              {
                *(v119 + 392) = *(v119 + 16);
                cnmatrix::CNMatrixBase<double>::operator=(v119 + 400, v119 + 24);
                cnmatrix::CNMatrixBase<double>::operator=(v119 + 464, v119 + 88);
                cnmatrix::CNMatrixBase<double>::operator=(v119 + 528, v119 + 152);
                cnmatrix::CNMatrixBase<double>::operator=(v119 + 640, v119 + 264);
                *(v119 + 760) = *(v119 + 384);
                *(v119 + 752) = *(v119 + 376);
                v120 = *v119;
                v119 -= 376;
              }

              while (v140 < v120);
              *(v119 + 392) = v135;
              cnmatrix::CNMatrixBase<double>::operator=(v119 + 400, v136);
              cnmatrix::CNMatrixBase<double>::operator=(v119 + 464, v137);
              cnmatrix::CNMatrixBase<double>::operator=(v119 + 528, v138);
              a5.n128_u64[0] = cnmatrix::CNMatrixBase<double>::operator=(v119 + 640, v139).n128_u64[0];
              v121 = v141;
              *(v119 + 752) = v140;
              *(v119 + 760) = v121;
            }

            v115 = v117 + 376;
            v116 += 376;
            a1 = v117;
          }

          while (v117 + 376 != a2);
        }
      }

      return a5.n128_f64[0];
    }

    if (!a3)
    {
      if (a1 != v8)
      {
        v81 = v12 >> 1;
        v82 = v12 >> 1;
        do
        {
          v83 = v82;
          if (v81 >= v82)
          {
            v84 = (2 * v82) | 1;
            v85 = a1 + 376 * v84;
            if (2 * v82 + 2 < v11 && *(v85 + 360) < *(v85 + 736))
            {
              v85 += 376;
              v84 = 2 * v82 + 2;
            }

            v86 = a1 + 376 * v82;
            if (*(v85 + 360) >= *(v86 + 360))
            {
              v135 = *v86;
              cnmatrix::CNMatrix<3u,1u,double>::CNMatrix(v136, v86 + 8);
              cnmatrix::CNMatrix<3u,1u,double>::CNMatrix(v137, v86 + 72);
              cnmatrix::CNMatrix<3u,3u,double>::CNMatrix(v138, v86 + 136);
              cnmatrix::CNMatrix<3u,3u,double>::CNMatrix(v139, v86 + 248);
              v87 = *(v86 + 360);
              v141 = *(v86 + 368);
              v140 = v87;
              do
              {
                v88 = v85;
                *v86 = *v85;
                cnmatrix::CNMatrixBase<double>::operator=(v86 + 8, v85 + 8);
                cnmatrix::CNMatrixBase<double>::operator=(v86 + 72, v85 + 72);
                cnmatrix::CNMatrixBase<double>::operator=(v86 + 136, v85 + 136);
                cnmatrix::CNMatrixBase<double>::operator=(v86 + 248, v85 + 248);
                v89 = *(v85 + 368);
                *(v86 + 360) = *(v85 + 360);
                *(v86 + 368) = v89;
                if (v81 < v84)
                {
                  break;
                }

                v90 = 2 * v84;
                v84 = (2 * v84) | 1;
                v85 = a1 + 376 * v84;
                v91 = v90 + 2;
                if (v91 < v11 && *(v85 + 360) < *(v85 + 736))
                {
                  v85 += 376;
                  v84 = v91;
                }

                v86 = v88;
              }

              while (*(v85 + 360) >= v140);
              *v88 = v135;
              cnmatrix::CNMatrixBase<double>::operator=(v88 + 8, v136);
              cnmatrix::CNMatrixBase<double>::operator=(v88 + 72, v137);
              cnmatrix::CNMatrixBase<double>::operator=(v88 + 136, v138);
              cnmatrix::CNMatrixBase<double>::operator=(v88 + 248, v139);
              v92 = v141;
              *(v88 + 360) = v140;
              *(v88 + 368) = v92;
            }
          }

          v82 = v83 - 1;
        }

        while (v83);
        v93 = 0x51B3BEA3677D46CFLL * (v10 >> 3);
        do
        {
          v94 = a2;
          v128 = *a1;
          cnmatrix::CNMatrix<3u,1u,double>::CNMatrix(v129, a1 + 8);
          cnmatrix::CNMatrix<3u,1u,double>::CNMatrix(v130, a1 + 72);
          cnmatrix::CNMatrix<3u,3u,double>::CNMatrix(v131, a1 + 136);
          cnmatrix::CNMatrix<3u,3u,double>::CNMatrix(v132, a1 + 248);
          v95 = 0;
          v96 = *(a1 + 360);
          v134 = *(a1 + 368);
          v133 = v96;
          v97 = a1;
          do
          {
            v98 = v97 + 376 * v95;
            v99 = v98 + 376;
            if (2 * v95 + 2 >= v93)
            {
              v95 = (2 * v95) | 1;
            }

            else
            {
              v100 = *(v98 + 736);
              v101 = *(v98 + 1112);
              v102 = v98 + 752;
              if (v100 >= v101)
              {
                v95 = (2 * v95) | 1;
              }

              else
              {
                v99 = v102;
                v95 = 2 * v95 + 2;
              }
            }

            *v97 = *v99;
            cnmatrix::CNMatrixBase<double>::operator=(v97 + 8, v99 + 8);
            cnmatrix::CNMatrixBase<double>::operator=(v97 + 72, v99 + 72);
            cnmatrix::CNMatrixBase<double>::operator=(v97 + 136, v99 + 136);
            cnmatrix::CNMatrixBase<double>::operator=(v97 + 248, v99 + 248);
            v103 = *(v99 + 368);
            *(v97 + 360) = *(v99 + 360);
            *(v97 + 368) = v103;
            v97 = v99;
          }

          while (v95 <= ((v93 - 2) >> 1));
          v126 = (v99 + 360);
          a2 -= 376;
          if (v99 == v94 - 376)
          {
            *v99 = v128;
            cnmatrix::CNMatrixBase<double>::operator=(v99 + 8, v129);
            cnmatrix::CNMatrixBase<double>::operator=(v99 + 72, v130);
            cnmatrix::CNMatrixBase<double>::operator=(v99 + 136, v131);
            a5.n128_u64[0] = cnmatrix::CNMatrixBase<double>::operator=(v99 + 248, v132).n128_u64[0];
            v113 = v134;
            *v126 = v133;
            *(v99 + 368) = v113;
          }

          else
          {
            *v99 = *(v94 - 376);
            cnmatrix::CNMatrixBase<double>::operator=(v99 + 8, v94 - 368);
            cnmatrix::CNMatrixBase<double>::operator=(v99 + 72, v94 - 304);
            cnmatrix::CNMatrixBase<double>::operator=(v99 + 136, v94 - 240);
            cnmatrix::CNMatrixBase<double>::operator=(v99 + 248, v94 - 128);
            v104 = *(v94 - 16);
            *(v99 + 368) = *(v94 - 8);
            *v126 = v104;
            *(v94 - 376) = v128;
            cnmatrix::CNMatrixBase<double>::operator=(v94 - 368, v129);
            cnmatrix::CNMatrixBase<double>::operator=(v94 - 304, v130);
            cnmatrix::CNMatrixBase<double>::operator=(v94 - 240, v131);
            a5.n128_u64[0] = cnmatrix::CNMatrixBase<double>::operator=(v94 - 128, v132).n128_u64[0];
            v105 = v134;
            *(v94 - 16) = v133;
            *(v94 - 8) = v105;
            v106 = v99 - a1 + 376;
            if (v106 >= 377)
            {
              v107 = (0x51B3BEA3677D46CFLL * (v106 >> 3) - 2) >> 1;
              v108 = a1 + 376 * v107;
              a5.n128_u64[0] = *(v108 + 360);
              if (a5.n128_f64[0] < *v126)
              {
                v135 = *v99;
                cnmatrix::CNMatrix<3u,1u,double>::CNMatrix(v136, v99 + 8);
                cnmatrix::CNMatrix<3u,1u,double>::CNMatrix(v137, v99 + 72);
                cnmatrix::CNMatrix<3u,3u,double>::CNMatrix(v138, v99 + 136);
                cnmatrix::CNMatrix<3u,3u,double>::CNMatrix(v139, v99 + 248);
                v109 = *v126;
                v141 = *(v99 + 368);
                v140 = v109;
                do
                {
                  v110 = v108;
                  *v99 = *v108;
                  cnmatrix::CNMatrixBase<double>::operator=(v99 + 8, v108 + 8);
                  cnmatrix::CNMatrixBase<double>::operator=(v99 + 72, v108 + 72);
                  cnmatrix::CNMatrixBase<double>::operator=(v99 + 136, v108 + 136);
                  cnmatrix::CNMatrixBase<double>::operator=(v99 + 248, v108 + 248);
                  v111 = *(v108 + 368);
                  *(v99 + 360) = *(v108 + 360);
                  *(v99 + 368) = v111;
                  if (!v107)
                  {
                    break;
                  }

                  v107 = (v107 - 1) >> 1;
                  v108 = a1 + 376 * v107;
                  v99 = v110;
                }

                while (*(v108 + 360) < v140);
                *v110 = v135;
                cnmatrix::CNMatrixBase<double>::operator=(v110 + 8, v136);
                cnmatrix::CNMatrixBase<double>::operator=(v110 + 72, v137);
                cnmatrix::CNMatrixBase<double>::operator=(v110 + 136, v138);
                a5.n128_u64[0] = cnmatrix::CNMatrixBase<double>::operator=(v110 + 248, v139).n128_u64[0];
                v112 = v141;
                *(v110 + 360) = v140;
                *(v110 + 368) = v112;
              }
            }
          }
        }

        while (v93-- > 2);
      }

      return a5.n128_f64[0];
    }

    v13 = v11 >> 1;
    v14 = a1 + 376 * (v11 >> 1);
    v15 = *(v8 - 2);
    if (v10 >= 0xBC01)
    {
      v16 = *(v14 + 360);
      if (v16 >= *(a1 + 360))
      {
        if (v15 < v16)
        {
          std::iter_swap[abi:ne200100]<RoseSyntheticApertureFiltering::FilterInitializationResult *,RoseSyntheticApertureFiltering::FilterInitializationResult *>(v14, v125);
          if (*(v14 + 360) < *(a1 + 360))
          {
            v17 = a1;
            v18 = v14;
            goto LABEL_25;
          }
        }
      }

      else
      {
        v17 = a1;
        if (v15 < v16)
        {
          goto LABEL_16;
        }

        std::iter_swap[abi:ne200100]<RoseSyntheticApertureFiltering::FilterInitializationResult *,RoseSyntheticApertureFiltering::FilterInitializationResult *>(a1, v14);
        if (*(v8 - 2) < *(v14 + 360))
        {
          v17 = v14;
LABEL_16:
          v18 = (a2 - 376);
LABEL_25:
          std::iter_swap[abi:ne200100]<RoseSyntheticApertureFiltering::FilterInitializationResult *,RoseSyntheticApertureFiltering::FilterInitializationResult *>(v17, v18);
        }
      }

      v22 = a1 + 376 * v13;
      v23 = v22 - 376;
      v24 = *(v22 - 16);
      v25 = *v124;
      if (v24 >= *(a1 + 736))
      {
        if (v25 < v24)
        {
          std::iter_swap[abi:ne200100]<RoseSyntheticApertureFiltering::FilterInitializationResult *,RoseSyntheticApertureFiltering::FilterInitializationResult *>(v23, (a2 - 752));
          if (*(v23 + 360) < *(a1 + 736))
          {
            v26 = (a1 + 376);
            v27 = v23;
            goto LABEL_37;
          }
        }
      }

      else
      {
        v26 = (a1 + 376);
        if (v25 < v24)
        {
          goto LABEL_30;
        }

        std::iter_swap[abi:ne200100]<RoseSyntheticApertureFiltering::FilterInitializationResult *,RoseSyntheticApertureFiltering::FilterInitializationResult *>(v26, v23);
        if (*v124 < *(v23 + 360))
        {
          v26 = v23;
LABEL_30:
          v27 = (a2 - 752);
LABEL_37:
          std::iter_swap[abi:ne200100]<RoseSyntheticApertureFiltering::FilterInitializationResult *,RoseSyntheticApertureFiltering::FilterInitializationResult *>(v26, v27);
        }
      }

      v28 = a1 + 376 * v13;
      v29 = v28 + 376;
      v30 = *(v28 + 736);
      v31 = *v123;
      if (v30 >= *(a1 + 1112))
      {
        if (v31 < v30)
        {
          std::iter_swap[abi:ne200100]<RoseSyntheticApertureFiltering::FilterInitializationResult *,RoseSyntheticApertureFiltering::FilterInitializationResult *>(v29, (a2 - 1128));
          if (*(v29 + 360) < *(a1 + 1112))
          {
            v32 = (a1 + 752);
            v33 = v29;
            goto LABEL_46;
          }
        }
      }

      else
      {
        v32 = (a1 + 752);
        if (v31 < v30)
        {
          goto LABEL_42;
        }

        std::iter_swap[abi:ne200100]<RoseSyntheticApertureFiltering::FilterInitializationResult *,RoseSyntheticApertureFiltering::FilterInitializationResult *>(v32, v29);
        if (*v123 < *(v29 + 360))
        {
          v32 = v29;
LABEL_42:
          v33 = (a2 - 1128);
LABEL_46:
          std::iter_swap[abi:ne200100]<RoseSyntheticApertureFiltering::FilterInitializationResult *,RoseSyntheticApertureFiltering::FilterInitializationResult *>(v32, v33);
        }
      }

      v34 = *(v14 + 360);
      v35 = *(v29 + 360);
      if (v34 >= *(v23 + 360))
      {
        if (v35 < v34)
        {
          std::iter_swap[abi:ne200100]<RoseSyntheticApertureFiltering::FilterInitializationResult *,RoseSyntheticApertureFiltering::FilterInitializationResult *>(v14, v29);
          if (*(v14 + 360) < *(v23 + 360))
          {
            v36 = v23;
            v37 = v14;
            goto LABEL_55;
          }
        }
      }

      else
      {
        v36 = v23;
        if (v35 < v34)
        {
          goto LABEL_51;
        }

        std::iter_swap[abi:ne200100]<RoseSyntheticApertureFiltering::FilterInitializationResult *,RoseSyntheticApertureFiltering::FilterInitializationResult *>(v23, v14);
        if (*(v29 + 360) < *(v14 + 360))
        {
          v36 = v14;
LABEL_51:
          v37 = v29;
LABEL_55:
          std::iter_swap[abi:ne200100]<RoseSyntheticApertureFiltering::FilterInitializationResult *,RoseSyntheticApertureFiltering::FilterInitializationResult *>(v36, v37);
        }
      }

      v20 = a1;
      v21 = v14;
      goto LABEL_57;
    }

    v19 = *(a1 + 360);
    if (v19 >= *(v14 + 360))
    {
      if (v15 >= v19)
      {
        goto LABEL_58;
      }

      std::iter_swap[abi:ne200100]<RoseSyntheticApertureFiltering::FilterInitializationResult *,RoseSyntheticApertureFiltering::FilterInitializationResult *>(a1, v125);
      if (*(a1 + 360) >= *(v14 + 360))
      {
        goto LABEL_58;
      }

      v20 = v14;
      v21 = a1;
    }

    else
    {
      v20 = v14;
      if (v15 >= v19)
      {
        std::iter_swap[abi:ne200100]<RoseSyntheticApertureFiltering::FilterInitializationResult *,RoseSyntheticApertureFiltering::FilterInitializationResult *>(v14, a1);
        if (*(v8 - 2) >= *(a1 + 360))
        {
          goto LABEL_58;
        }

        v20 = a1;
      }

      v21 = (a2 - 376);
    }

LABEL_57:
    std::iter_swap[abi:ne200100]<RoseSyntheticApertureFiltering::FilterInitializationResult *,RoseSyntheticApertureFiltering::FilterInitializationResult *>(v20, v21);
LABEL_58:
    --a3;
    if ((a4 & 1) != 0 || *(a1 - 16) < *(a1 + 360))
    {
      v135 = *a1;
      cnmatrix::CNMatrix<3u,1u,double>::CNMatrix(v136, a1 + 8);
      cnmatrix::CNMatrix<3u,1u,double>::CNMatrix(v137, a1 + 72);
      cnmatrix::CNMatrix<3u,3u,double>::CNMatrix(v138, a1 + 136);
      cnmatrix::CNMatrix<3u,3u,double>::CNMatrix(v139, a1 + 248);
      v38 = 0;
      v39 = *(a1 + 360);
      v141 = *(a1 + 368);
      v140 = v39;
      do
      {
        v40 = *(a1 + v38 + 736);
        v38 += 376;
      }

      while (v40 < v140);
      v41 = a1 + v38;
      v42 = v8;
      if (v38 == 376)
      {
        v45 = a2;
        while (v41 < v45)
        {
          v43 = (v45 - 376);
          v46 = *(v45 - 16);
          v45 -= 376;
          if (v46 < v140)
          {
            goto LABEL_70;
          }
        }

        v43 = v45;
      }

      else
      {
        do
        {
          v43 = v42 - 376;
          v44 = *(v42 - 2);
          v42 -= 376;
        }

        while (v44 >= v140);
      }

LABEL_70:
      v9 = v41;
      if (v41 < v43)
      {
        v47 = v43;
        do
        {
          std::iter_swap[abi:ne200100]<RoseSyntheticApertureFiltering::FilterInitializationResult *,RoseSyntheticApertureFiltering::FilterInitializationResult *>(v9, v47);
          do
          {
            v48 = *(v9 + 736);
            v9 += 376;
          }

          while (v48 < v140);
          do
          {
            v49 = *(v47 - 2);
            v47 -= 376;
          }

          while (v49 >= v140);
        }

        while (v9 < v47);
      }

      v50 = (v9 - 376);
      if (v9 - 376 != a1)
      {
        *a1 = *v50;
        cnmatrix::CNMatrixBase<double>::operator=(a1 + 8, v9 - 368);
        cnmatrix::CNMatrixBase<double>::operator=(a1 + 72, v9 - 304);
        cnmatrix::CNMatrixBase<double>::operator=(a1 + 136, v9 - 240);
        cnmatrix::CNMatrixBase<double>::operator=(a1 + 248, v9 - 128);
        v51 = *(v9 - 8);
        *(a1 + 360) = *(v9 - 16);
        *(a1 + 368) = v51;
      }

      *v50 = v135;
      cnmatrix::CNMatrixBase<double>::operator=(v9 - 368, v136);
      cnmatrix::CNMatrixBase<double>::operator=(v9 - 304, v137);
      cnmatrix::CNMatrixBase<double>::operator=(v9 - 240, v138);
      a5 = cnmatrix::CNMatrixBase<double>::operator=(v9 - 128, v139);
      v52 = v141;
      *(v9 - 16) = v140;
      *(v9 - 8) = v52;
      v53 = v41 >= v43;
      v8 = a2;
      if (!v53)
      {
        goto LABEL_82;
      }

      v54 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,RoseSyntheticApertureFiltering::PRRoseSyntheticApertureBatchFilter::batchSolver(void)::$_2 &,RoseSyntheticApertureFiltering::FilterInitializationResult *>(a1, v9 - 376);
      if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,RoseSyntheticApertureFiltering::PRRoseSyntheticApertureBatchFilter::batchSolver(void)::$_2 &,RoseSyntheticApertureFiltering::FilterInitializationResult *>(v9, a2))
      {
        a2 = v9 - 376;
        if (!v54)
        {
          goto LABEL_1;
        }

        return a5.n128_f64[0];
      }

      if (!v54)
      {
LABEL_82:
        std::__introsort<std::_ClassicAlgPolicy,RoseSyntheticApertureFiltering::PRRoseSyntheticApertureBatchFilter::batchSolver(void)::$_2 &,RoseSyntheticApertureFiltering::FilterInitializationResult *,false>(a1, v9 - 376, a3, a4 & 1, a5);
        a4 = 0;
      }
    }

    else
    {
      v135 = *a1;
      cnmatrix::CNMatrix<3u,1u,double>::CNMatrix(v136, a1 + 8);
      cnmatrix::CNMatrix<3u,1u,double>::CNMatrix(v137, a1 + 72);
      cnmatrix::CNMatrix<3u,3u,double>::CNMatrix(v138, a1 + 136);
      cnmatrix::CNMatrix<3u,3u,double>::CNMatrix(v139, a1 + 248);
      v55 = *(a1 + 360);
      v141 = *(a1 + 368);
      v140 = v55;
      if (v55 >= *(v8 - 2))
      {
        v58 = a1 + 376;
        do
        {
          v9 = v58;
          if (v58 >= v8)
          {
            break;
          }

          v59 = *(v58 + 360);
          v58 += 376;
        }

        while (v140 >= v59);
      }

      else
      {
        v56 = a1;
        do
        {
          v9 = v56 + 376;
          v57 = *(v56 + 736);
          v56 += 376;
        }

        while (v140 >= v57);
      }

      v60 = v8;
      if (v9 < v8)
      {
        do
        {
          v60 = v8 - 376;
          v61 = *(v8 - 2);
          v8 -= 376;
        }

        while (v140 < v61);
      }

      while (v9 < v60)
      {
        std::iter_swap[abi:ne200100]<RoseSyntheticApertureFiltering::FilterInitializationResult *,RoseSyntheticApertureFiltering::FilterInitializationResult *>(v9, v60);
        do
        {
          v62 = *(v9 + 736);
          v9 += 376;
        }

        while (v140 >= v62);
        do
        {
          v63 = *(v60 - 2);
          v60 -= 376;
        }

        while (v140 < v63);
      }

      v64 = (v9 - 376);
      if (v9 - 376 != a1)
      {
        *a1 = *v64;
        cnmatrix::CNMatrixBase<double>::operator=(a1 + 8, v9 - 368);
        cnmatrix::CNMatrixBase<double>::operator=(a1 + 72, v9 - 304);
        cnmatrix::CNMatrixBase<double>::operator=(a1 + 136, v9 - 240);
        cnmatrix::CNMatrixBase<double>::operator=(a1 + 248, v9 - 128);
        v65 = *(v9 - 8);
        *(a1 + 360) = *(v9 - 16);
        *(a1 + 368) = v65;
      }

      *v64 = v135;
      cnmatrix::CNMatrixBase<double>::operator=(v9 - 368, v136);
      cnmatrix::CNMatrixBase<double>::operator=(v9 - 304, v137);
      cnmatrix::CNMatrixBase<double>::operator=(v9 - 240, v138);
      a5.n128_u64[0] = cnmatrix::CNMatrixBase<double>::operator=(v9 - 128, v139).n128_u64[0];
      a4 = 0;
      v66 = v141;
      *(v9 - 16) = v140;
      *(v9 - 8) = v66;
      v8 = a2;
    }
  }

  a5.n128_u64[0] = *(a1 + 736);
  v69 = *(v8 - 2);
  if (a5.n128_f64[0] < *(a1 + 360))
  {
    if (v69 < a5.n128_f64[0])
    {
      goto LABEL_110;
    }

    std::iter_swap[abi:ne200100]<RoseSyntheticApertureFiltering::FilterInitializationResult *,RoseSyntheticApertureFiltering::FilterInitializationResult *>(a1, (a1 + 376));
    a5.n128_u64[0] = *(v8 - 2);
    if (a5.n128_f64[0] < *(a1 + 736))
    {
      v70 = (a1 + 376);
      goto LABEL_111;
    }

    return a5.n128_f64[0];
  }

  if (v69 >= a5.n128_f64[0])
  {
    return a5.n128_f64[0];
  }

  v67 = (a1 + 376);
  v68 = (a2 - 376);
LABEL_163:
  std::iter_swap[abi:ne200100]<RoseSyntheticApertureFiltering::FilterInitializationResult *,RoseSyntheticApertureFiltering::FilterInitializationResult *>(v67, v68);
  a5.n128_u64[0] = *(a1 + 736);
  if (a5.n128_f64[0] < *(a1 + 360))
  {
    v71 = (a1 + 376);
    v70 = a1;
    goto LABEL_112;
  }

  return a5.n128_f64[0];
}